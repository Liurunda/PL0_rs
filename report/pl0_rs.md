# Code reading report for a compiler for pl0 in rust

didn't implement read & write

ast.rs: define ast nodes as rust enumerations

scanner.rs: struct Scanner implement lexical analysis as am independent pass, provide token sequence to parser

parser.rs: handwritten recursive descent analysis, no error recovery, exit at first error

irgen.rs: generate symbol table and intermediate representation