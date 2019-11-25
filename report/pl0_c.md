# Code reading report for pl0 compiler in c

pl0 is a rather simple procedural language, without OO features. 

Pl0 implement features: 

​	constant and mutable integer variables, simple arithmetic expression, variable assignment, procedures(function without return value)

Codes are organized in two files pl0.c, pl0.h, respectively 1353 lines and 135 lines.

pl0.h contains some function declarations and struct definitions. Functions are implemented in pl0.c.

communications between functions are implemented by lots of global variables in pl0.h

The executable should be given a pl0 source file as input. 

Output contains symbol table, virtual machine codes, the executing result of the pl0 program(if input are provided).

getch(): get a new char from source file

getsym(): manually simulate a DFA, finish lexical analysis. store the next symbol in global variable sym

lots of functions: recursive descent analysis, with syntax analysis, syntactic analysis, strongly coupled

interpret(): interpret the three address code stored in array `code []`, working as a virtual machine

test(): implement simple error recovery. c enum is also integer, number of different symbols is small, so use bool array to represent Follow Set. 