## C3 Projects
The developers of the **C3 language** are generous to programmers in the way that they allows them to automate writing boilerplate code 
and structure with a simple singular command. <br> 
<hr>

> [!NOTE]
> It is NOT mandatory for using this awesome feature, you can initialize or create structures on your own volition as per requirement. <br> <br>
> Practically however it is encouraged (at least by me, if youre a beginner) that you do test this out at the very least. <br>
> Pros of this feature include that there are commands which automate your compilation, and modularized structure stores executables in a seperate `build` directory, etc. <br> <br>
> More of such will be explained further in this `.md`, keep reading. <br>

Follwing this `.md`, you will
- very easily be able to make your own C3 boilerplate structure with just a few keybord strokes      <br>
- understand the boilerplate structure and its working - like how everything connects and works      <br>
- understand `build` files, how to execute from build directory and other fun (but also very useful) low-level, information I researched! <br> 
<hr>

## Commands for initializing a project
The term for making a project is what I will technically be referring to as `initialization`, the commands overview is given below in short for those in haste. <br>

```c
c3c init C3_Project
cd C3_Project
c3c run C3_Project
```

The command name for initializing a project structure is `c3c init`, it accepts the project name as the necessary parsed parameter. <br>
So the final command will be in the form of `c3c init <program_name>`: <br>
```
c3c init C3_Project
```
And you should see something like `Project 'C3_Project' created.` indicing/signalling the confirmation of the project directory initialization. <br>
<br>
Now, we will `cd` (Change the Directory) into the project with the following command:
```
cd C3_Project
```

> [!WARNING]
> Running compilation processing commands outside of (that) project directory will NOT work, instead you will see:
> ``` 
> The root build directory containing project.json could not be found. Did you use the correct directory?
> ```
> This is explained by the fact that project compilation commands like `c3c run` depend on files like `project.json` which contains the necessary data for a successful `c3c run` compilation, I will explain the necessary data-terms inside there soon, keep going.

## Woah, are'nt there so many files in here?
Well yeah, and they're all mostly empty except `src` and `build`, the directory (of the project you just initialized) will also have other files as of `v1.0.0` listed below:
<br>
| Directory | Exposition |
|------------------|--------|
| `/build/` | Remember that `C3` is a compiled language, this directory will contain the build artifacts (anything relational to code compilation) such as object files, translation units, intermediate outputs, the final executable, etc. will be stored here. <be> The `c3c run` command employs a linker which connects all source code files `.c3`s and forms a final executable ((in) binary code). |
| `/docs/` | For every project you make, it is a good habit to "document" what the program does, libraries exposition, errors and debugging warnings, etc. In this directory you will do exactly that. |
| `/lib/` | C3 allows programmers to write header files in the form of libraries, they are `.c3l` files, you may use this for code modularization (ie. seperating/isolating functional code for abstraction/ecapsulation purposes, etc.) |
| `/resources/` |  Contains any files that aren't the source code but your program needs them, example - sound effects, graphics, images, configuration files, etc. |
| `/scripts/` | May contain your own scripts for automation, but also mainly includes `.c3` code files which are used as cripts during compile-time codegen. |
| `/src/` | Your (main) source code is stored here; default structure contains `main.c3` with code that prints "Hello, World!". You are obviously free to add more or delete the current and make/modify your own. |
| `project.json` | Very important, contains controls about build automation, executable path, optimization controls, etc. <br> Official documentation notates it as "similar to `package.json` in NodeJS". |
| `LICENSE` | Project license for source code usage protection rights, plagiarism is pretty common these days you know? I cannot explain this one much though, sorry. |
| `README.md` | Self explanatory, this is your program's `README.md` which your users will see for reading about what your project is and how they may replicate it on their machine or how they will install dependencies, run the code, etc. |
