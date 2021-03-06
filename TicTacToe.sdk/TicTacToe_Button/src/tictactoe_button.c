/*
 * tictactoe_button.c
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
#define pmodJA3 XPAR_AXI_GPIO_9_DEVICE_ID
#define pmodJA4 XPAR_AXI_GPIO_0_DEVICE_ID

PmodGPIO button;
XGpio button9;
XGpio led1, led2, led3;
XGpio led4, led5, led6;
XGpio led7, led8, led9;

void Initialize();
void Cleanup();
void EnableCaches();
void DisableCaches();
void ledSwitch(int player, int result);
void buttonWait();
int buttonScan(int player);
int checkWin(int player);
int checkDraw(int play, int turn);

int board[10] = {0,1,2,3,4,5,6,7,8,9};

int main(){
	Initialize();
	int player = 1;
	int play = 1;
	int turn = 1;
	int result;
	while (play == 1){
		player = (player % 2) ? 1 : 2;
		buttonWait();
		result = buttonScan(player);
		board[result] = player;
		ledSwitch(player, result);
		turn++;
		play = checkWin(player);
		play = checkDraw(play, turn);
		player++;
	}
	Cleanup();
	return 0;
}

int checkWin(int player){
	int win = 0;
	if (board[1] == board[2] && board[2] == board[3]){win = 1;}
	if (board[4] == board[5] && board[5] == board[6]){win = 1;}
	if (board[7] == board[8] && board[8] == board[9]){win = 1;}
	if (board[1] == board[4] && board[4] == board[7]){win = 1;}
	if (board[2] == board[5] && board[5] == board[8]){win = 1;}
	if (board[3] == board[6] && board[6] == board[9]){win = 1;}
	if (board[1] == board[5] && board[5] == board[9]){win = 1;}
	if (board[3] == board[5] && board[5] == board[7]){win = 1;}
	if (win == 1){
		xil_printf("Player %d Win", player);
		return 0;
	}
	else {
		return 1;
	}
}

int checkDraw(int play, int turn){
	int draw;
	if (turn > 9){
		if (play == 1){
			xil_printf("Draw Match");
		}
		draw = 0;
	}
	else {
		if (play == 0){
			draw = 0;
		}
		else {
			draw = 1;
		}
	}
	return draw;
}

int buttonScan(int player){
	int scan = 1;
	int result = 0;
	int read;
	xil_printf("Player %d = ", player);
	while (scan == 1){
		read = XGpio_DiscreteRead(&button9, 1);
		if (read == 0){
			result = 9;
			scan = 0;
		}
		for (int i = 1; i <= 8; i++){
			read = GPIO_getPin(&button, i);
			if (read == 0){
				result = i;
				scan = 0;
				i = 9;
			}
		}
	}
	xil_printf("%d\n", result);
	//usleep(3000000);
	return result;
}

void buttonWait(){
	int wait = 1;
	int sum;
	int row[9];
	while (wait == 1){
		row[0] = XGpio_DiscreteRead(&button9, 1);
		for (int i = 1; i <= 8; i++){
			row[i] = GPIO_getPin(&button, i);
		}
		sum = 0;
		for (int j = 0; j < 9; j++){
			sum += row[j];
		}
		if (sum == 9){
			wait = 0;
		}
	}
	usleep(3000000);
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
	GPIO_begin(&button, pmodJE, 0xFF);
	XGpio_Initialize(&led1, pmodJC4);
	XGpio_Initialize(&led2, pmodJC3);
	XGpio_Initialize(&led3, pmodJC2);
	XGpio_Initialize(&led4, pmodJC1);
	XGpio_Initialize(&led5, pmodJB4);
	XGpio_Initialize(&led6, pmodJB3);
	XGpio_Initialize(&led7, pmodJB2);
	XGpio_Initialize(&led8, pmodJB1);
	XGpio_Initialize(&led9, pmodJA4);
	XGpio_Initialize(&button9, pmodJA3);
	XGpio_SetDataDirection(&led1, 1, 0x00);
	XGpio_SetDataDirection(&led2, 1, 0x00);
	XGpio_SetDataDirection(&led3, 1, 0x00);
	XGpio_SetDataDirection(&led4, 1, 0x00);
	XGpio_SetDataDirection(&led5, 1, 0x00);
	XGpio_SetDataDirection(&led6, 1, 0x00);
	XGpio_SetDataDirection(&led7, 1, 0x00);
	XGpio_SetDataDirection(&led8, 1, 0x00);
	XGpio_SetDataDirection(&led9, 1, 0x00);
	XGpio_SetDataDirection(&button9, 1, 0xFF);
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
