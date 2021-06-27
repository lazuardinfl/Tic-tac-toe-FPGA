# Tic-Tac-Toe with SoC FPGA
The project is made to apply the classic game which is often known as Tic Tac Toe. This game is a type of board game with a size of 3×3 which is played by two players. As in board games in general, players place pieces on the board. The symbol of this pawn differs in shape for both players. Generally, the symbols X and O are used to distinguish the pieces of the first player and the second player. Both players take turns marking the spaces on the grid board with their pawn symbols. They also compete with each other in placing their pieces to form a horizontal, vertical, or diagonal line to win the match.

## Specifications
Here are the specs:
* Breadboard, RGB LED x9, push-button x9, resistors, cables and jumpers
* Zybo Zynq-7000 SoC with the use of the following peripherals:
  * USB UART/JTAG for communication with laptop
  * Pmod Standard JE as input from push-button
  * Pmod High-Speed JB and JC as output to RGB LED
  * Pmod XADC JA as residual input and output
* Vivado HLx is used to design IP blocks and other required hardware environments. PMod and custom IPs are used
* Xilinx Software Development Kit (SDK) is used as an IDE to create program source code and target programs to Zybo

## Tutorial
1. You need to design the game board with breadboard as shown in img folder. <img src="/img/board.jpg" height="500">
2. Each LED paired with push-button.
3. Jumper or cable start from Pmod Standard JE -> push-button -> LED -> Pmod High-Speed JB/JC.
4. Design IP like show in img folder with Vivado HLx. Or you can use directly synthesized IP I created using TicTacToe.xpr file. <img src="/img/ip.jpg" height="500">
5. Programmed software using Xilinx SDK. You can use source code from TicTacToe.sdk.
6. Target program to Zybo to run it.
