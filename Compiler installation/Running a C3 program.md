On Arch based system distributions, running a C3 program is extremely easy!

# Commands

To compile and run a C3 program named `this.c3` assumed to be in directory `/C3/`, open terminal and use
```
cd C3
c3c compile-run this.c3
```

or optionally
```
cd C3
c3c compile this.c3

{{ aris note: if you have a "module <module_name>;" in your c3 source code, it will make an executable with "Program linked to executable './<module_name>'." }}
{{ you will then execute it like this: ./<module_name> }}

./this
```

> [!NOTE]
> `./` is the shell construct for linking the path to the executable in CURRENT directory and makes a syscall to the kernel to execute something like `execve()`.
> The C3C compiler uses LLVM to generate an Intermediate Representation (IR) to produce an object <program>.o file(s) which is linked altogether with a linker (eg. GNU linker `ld` or `ldd` in linux systems).

# Essential compiler and debugger stuff
- The main compiler for C3 language is aka `c3c`, it is written in the C language and is built using Low Level Virtual Machine (LLVM).
- C3 does not come with a pre-existing debugger for its language other than syntax errors, you have to link GDB or LLDB for debugging.
