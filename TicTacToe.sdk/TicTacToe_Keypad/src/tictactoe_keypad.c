/*
 * tictactoe_code.c
 *
 *  Created on: 22 Mei 2019
 *      Author: Ardi
 */

#include <stdio.h>
#include <xgpio.h>
#include "PmodGPIO.h"
#include "xil_cache.h"
#include "xil_printf.h"
#include "xparameters.h"
#include "sleep.h"

#define pmodJE XPAR_PMODGPIO_0_AXI_LITE_GPIO_BASEADDR
#define pmodJC4 XPAR_AXI_GPIO_1_DEVICE_ID
#define pmodJC3 XPAR_AXI_GPIO_2_DEVICE_ID
#define pmodJC2 XPAR_AXI_GPIO_3_DEVICE_ID
#define pmodJC1 XPAR_AXI_GPIO_4_DEVICE_ID
#define pmodJB4 XPAR_AXI_GPIO_5_DEVICE_ID
#define pmodJB3 XPAR_AXI_GPIO_6_DEVICE_ID
#define pmodJB2 XPAR_AXI_GPIO_7_DEVICE_ID
#define pmodJB1 XPAR_AXI_GPIO_8_DEVICE_ID
#define pmodJA4 XPAR_AXI_GPIO_0_DEVICE_ID

PmodGPIO keypad;
XGpio led1, led2, led3;
XGpio led4, led5, led6;
XGpio led7, led8, led9;

void Initialize();
void Cleanup();
void EnableCaches();
void DisableCaches();
void ledSwitch(int player, int result);
void keypadWait();
int keypadScan();
int keypadBoard(int kolom, int baris);

int square[10] = {0,1,2,3,4,5,6,7,8,9};

int main(){
	Initialize();
	int play = 1;
	int player = 1;
	int turn = 1;
	int result;
	while (play == 1){
		player = (player % 2) ? 1 : 2;
		xil_printf("Player %d \n", player);
		keypadWait();
		result = keypadScan();
		square[result] = player;
		ledSwitch(player, result);
		player++;
		turn++;
		if (turn > 9){
			play = 0;
		}
	}
	Cleanup();
	return 0;
}

int keypadBoard(int kolom, int baris){
	int result;
	if (kolom == 1){
		if (baris == 1){result = 1;}
		else if (baris == 2){result = 4;}
		else if (baris == 3){result = 7;}
		else {result = 0;}
	}
	else if (kolom == 2){
		if (baris == 1){result = 2;}
		else if (baris == 2){result = 5;}
		else if (baris == 3){result = 8;}
		else {result = 0;}
	}
	else if (kolom == 1){
		if (baris == 1){result = 3;}
		else if (baris == 2){result = 6;}
		else if (baris == 3){result = 9;}
		else {result = 0;}
	}
	else {result = 0;}
	return result;
}

int keypadScan(){
	int scan = 1;
	int row;
	int kolom;
	int baris;
	xil_printf("Enter\n");
	while (scan == 1){
		for (int i = 5; i < 8; i++){
			GPIO_setPin(&keypad, i, 0);
			usleep(300000);
			for (int j = 0; j < 4; j++){
				row = GPIO_getPin(&keypad, j+1);
				if (row == 0){
					kolom = i-4;
					baris = j+1;
					j = 4;
					i = 8;
					scan = 0;
				}
			}
			GPIO_setPin(&keypad, i, 1);
			usleep(300000);
		}
	}
	return keypadBoard(kolom, baris);;
}

void keypadWait(){
	int wait = 1;
	int sum;
	int row[4];
	GPIO_setPin(&keypad, 5, 0);
	GPIO_setPin(&keypad, 6, 0);
	GPIO_setPin(&keypad, 7, 0);
	while (wait == 1){
		for (int i = 1; i <= 4; i++){
			row[i-1] = GPIO_getPin(&keypad, i);
		}
		sum = 0;
		for (int j = 0; j < 4; j++){
			sum += row[j];
		}
		if (sum == 4){
			wait = 0;
		}
	}
	GPIO_setPin(&keypad, 5, 1);
	GPIO_setPin(&keypad, 6, 1);
	GPIO_setPin(&keypad, 7, 1);
	usleep(300000);
}

void ledSwitch(int player, int result){
	int led;
	if (player == 1){led = 0x01;}
	else {led = 0x02;}
	if (result == 1){XGpio_DiscreteWrite(&led1, 1, led);}
	if (result == 2){XGpio_DiscreteWrite(&led2, 1, led);}
	if (result == 3){XGpio_DiscreteWrite(&led3, 1, led);}
	if (result == 4){XGpio_DiscreteWrite(&led4, 1, led);}
	if (result == 5){XGpio_DiscreteWrite(&led5, 1, led);}
	if (result == 6){XGpio_DiscreteWrite(&led6, 1, led);}
	if (result == 7){XGpio_DiscreteWrite(&led7, 1, led);}
	if (result == 8){XGpio_DiscreteWrite(&led8, 1, led);}
	if (result == 9){XGpio_DiscreteWrite(&led9, 1, led);}
}

void Initialize(){
	EnableCaches();
	GPIO_begin(&keypad, pmodJE, 0b00001111);
	XGpio_Initialize(&led1, pmodJC4);
	XGpio_Initialize(&led2, pmodJC3);
	XGpio_Initialize(&led3, pmodJC2);
	XGpio_Initialize(&led4, pmodJC1);
	XGpio_Initialize(&led5, pmodJB4);
	XGpio_Initialize(&led6, pmodJB3);
	XGpio_Initialize(&led7, pmodJB2);
	XGpio_Initialize(&led8, pmodJB1);
	XGpio_Initialize(&led9, pmodJA4);
	XGpio_SetDataDirection(&led1, 1, 0x00);
	XGpio_SetDataDirection(&led2, 1, 0x00);
	XGpio_SetDataDirection(&led3, 1, 0x00);
	XGpio_SetDataDirection(&led4, 1, 0x00);
	XGpio_SetDataDirection(&led5, 1, 0x00);
	XGpio_SetDataDirection(&led6, 1, 0x00);
	XGpio_SetDataDirection(&led7, 1, 0x00);
	XGpio_SetDataDirection(&led8, 1, 0x00);
	XGpio_SetDataDirection(&led9, 1, 0x00);
}

void Cleanup() {
	XGpio_DiscreteWrite(&led1, 1, 0x00);
	XGpio_DiscreteWrite(&led2, 1, 0x00);
	XGpio_DiscreteWrite(&led3, 1, 0x00);
	XGpio_DiscreteWrite(&led4, 1, 0x00);
	XGpio_DiscreteWrite(&led5, 1, 0x00);
	XGpio_DiscreteWrite(&led6, 1, 0x00);
	XGpio_DiscreteWrite(&led7, 1, 0x00);
	XGpio_DiscreteWrite(&led8, 1, 0x00);
	XGpio_DiscreteWrite(&led9, 1, 0x00);
	DisableCaches();
}

void EnableCaches() {
#ifdef __MICROBLAZE__
#ifdef XPAR_MICROBLAZE_USE_ICACHE
   Xil_ICacheEnable();
#endif
#ifdef XPAR_MICROBLAZE_USE_DCACHE
   Xil_DCacheEnable();
#endif
#endif
}

void DisableCaches() {
#ifdef __MICROBLAZE__
#ifdef XPAR_MICROBLAZE_USE_DCACHE
   Xil_DCacheDisable();
#endif
#ifdef XPAR_MICROBLAZE_USE_ICACHE
   Xil_ICacheDisable();
#endif
#endif
}
