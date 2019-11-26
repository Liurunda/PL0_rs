# Code reading report for a compiler for pl0 in java

Follow the logic of C version, reimplemented in java with OO features applied.

Global variables in C become static member of classes.

PL0.java: the main program(enter point)

Scanner.java: lexical analysis

Symbol.java: define the tokens

Table.java: define the symbol table

Parser.java: syntax analysis, syntactic analysis, target code generation intertwined, 682 lines

Interpreter.java: virtual machine, run the target codes generated