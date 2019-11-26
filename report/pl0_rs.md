# Code reading report for a compiler for pl0 in rust

didn't implement read & write

ast.rs: define ast nodes as rust enumerations

scanner.rs: struct Scanner implement lexical analysis as am independent pass, provide token sequence to parser

parser.rs: handwritten recursive descent analysis, no error recovery, exit at first error

ir.rs: definition of intermediate representation

irgen.rs: generate symbol table and intermediate representation, use pattern match instead of  visitor to process different ast nodes.

codegen.rs: generate a kind of machine code

vm.rs: execute the machine code， simulate the stack

interp.rs: interpreter, execute the program from the result of parser(interpret the ast directly)