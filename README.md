# Spaghetti

Well this escalted quickly. I wanted to learn some Linux assembler so I thought "what project should I work on to motivate my learning?" and the answer was "write my own basic compiler"

Perhaps I should have given it more thought but here we are

I have written a basic compiler for old school unstructured spaghetti basic from memory and it is severly limited, oh well

To test that the compiler was working it was simpler to create my own CPU and compile to that to make sure that I can compile and run the code. Later I will look at spitting out real AMD64 assembly

So here we are

## The tools

### `dbc`

This compiles the basic source and spits out assembly for my CPU

### `dcpu`

This loads the assembly from `dbc` and runs it

### `e`

This combines the above two into a single command, so `./e fred.bas` will compile and run `fred.bas`

### `renum`

Renumber a basic source file

### `runner`

Runs the tests against the CPU I created

## Directories

### `bcg`

Games from http://www.vintage-basic.net/games.html that I am using to test that my version works. These are the ones that I have not yet tackled

### `games`

Programs that will run under my CPU. Some have required small tweaks, some have had more extensive rewrites
