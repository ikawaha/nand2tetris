// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/04/Fill.asm

// Runs an infinite loop that listens to the keyboard input.
// When a key is pressed (any key), the program blackens the screen,
// i.e. writes "black" in every pixel;
// the screen should remain fully black as long as the key is pressed. 
// When no key is pressed, the program clears the screen, i.e. writes
// "white" in every pixel;
// the screen should remain fully clear as long as no key is pressed.

// Put your code here.
(LOOP)
    @KBD
    D=M
    @FILL
    D;JGT
    @CREAR
    0;JMP
(FILL)
    @i
    M=1
(FILL_START)
    @i
    D=M
    @8192
    D=A-D
    @LOOP
    D;JLT
    @SCREEN
    A=A+D
    M=-1
    @i
    M=M+1
    @FILL_START
    0;JMP
(CREAR)
    @i
    M=1
(CREAR_START)
    @i
    D=M
    @8192
    D=A-D
    @LOOP
    D;JLT
    @SCREEN
    A=A+D
    M=0
    @i
    M=M+1
    @CREAR_START
    0;JMP
