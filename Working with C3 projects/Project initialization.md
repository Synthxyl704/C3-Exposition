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
And you should see something like `Project 'C3_Project' created.` signalling the confirmation of the project directory initialization, good job!. <br>
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
> This is explained by the fact that project compilation commands like `c3c run` depend on files like `project.json` which contains the necessary data for a successful `c3c run` compilation, I will explain the necessary terms inside there soon, keep going.
