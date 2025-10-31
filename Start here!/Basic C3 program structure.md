## Suppose a .C3 file named `greetings.c3` with the following code:
```c
module greetings;
import std::io;

fn void main(String[] args) {
  io::printfn("Greetings fellers.");
}
```


Here, in Greetings.c3, we see the basic fundamental structure of the C3 language!

<hr>

## Modules
`modules` in C3 are essentially big chunks of units of code which "encapsulates" programming related functions, classes, and data. <br><br>
In the code `Greetings.c3` we are not using any build or make files, so we have imported our `filename` as our module for comprehension. <br> <br>
`module greetings` <br>
> [!NOTE]
> Yes, you have to keep it all lowercase, if you did/do not adhere to this rule, the compiler will throw out an error:
> ```
> Error: A module name may not have any uppercase characters, trailing, leading or double '_'
> ```

## Import
`Import` in C3 is a <b>statement</b> that is responsible for importing (standard library) modules into the program.

In the code, we write:
```
import std::io
```
Where `std::io` stands for "standard input/output" modules, so that we can access them within our .c3 program! <br>
The "I" in "Import" being capital kinda caught me off-gaurd lmao.

## Compound statements, semicolons, and parentheses
In C3: <br>
-> Compound statements are a series of lines of code that execute <b>sequentially</b>, they are inside curly braces `{ ... }` <br>
-> Semicolons are "code line enders/terminators" which tell the compiler that "yo bro this line of code ends here with my presence of existence" <br>
-> parentheses are resposible for correctly declaring `functions` fn, inside `( ... )` you have what is called as "function parameters" <br>

## fn void main(String[] args)
Now you might be asking, <b>what is fn?</b><br>
`fn` stands for "function" and it is a keyword declaring a function `main()` with return type `void` since we dont really return anything.<br><br>
We will learn more about datatypes soon in our next documents as we go on!<br>
`main(String[] args)` as you may know, `main()` is the impertinent function which runs actual command-line code, its aka "entry point" of a program in technical terms - `(String[] args)` is the `main()` function's parameter which takes an ARRAY of strings, i.e multiple strings.

> [!NOTE]
> It is not mandatory to write the `main();` function with `String[] args` as parameters, they are optional and you may skip it if you do not have anything to do with command line arguments.
> ```
>./greetings argument_1 argument_2 ${...} argument_n
> ```
> Here, `argument` is the first argument, `argument_2` is the second argument, and so on until `argument_n` as per requirement parsed.
> Arrays[] start from zero as the first index, so arg[0] is essentially the `./<program_executable_name>` followed by the consecutive parsed command-line arguments <br>

<br>

## io::printfn("Greetings fellers."); <br>
Woah, what is that weird `io::printfn` syntax? <br><br>
`::` in `io::printfn` in C3 is called as "module seperation operator" (in C++, `::` stands for "scope resolution operator") <br>
What is it doing? <br>
`::` or a module seperation operator here seperates the function `printfn()` from its parent module `std::io` and it looks inside the `std::io` module for a function declared as `printfn()` <br>
`io::printfn("Greetings fellers.");` is a basic `print` statement which prints whatever is inside `" ... "` to the console/terminal. <br> <br>
We can also write its longhand eqiuivalent in this way - `std::io::printfn("Greetings.");` - the shorthand equivalent is also called as "path-shortening" in the official documentation!

<hr> 

## more about the - `std::io:print<>()` - aka "print function variants" exposition <br>
### Using macros <br>
```c
import std::io;
import libc; // requisite import for libc::abort()

macro @__stringify__(#str) {
    if (!#str) {
      abort($stringify(#str));
    } 

    io::printfn (
      // "%s", $stringify(#str) // io::printfn("%s", "x");
      "[VALUE _ %s] = %s", $stringify(#str), #str
    );
}

fn int main(String[] argv) {
  String strToParse = "string_content_inside_variable";
  @__stringify__("string_content"); // prints the content as it is
  @__stringify__(strToParse); // prints the content with variable acknowledgement

  return 0;
}
```
<br> 

> [!NOTE]
> Wanna learn about this on lower level?
> When you execute `./<executable>`, it starts up 3 standard file descriptors which are special to the OS for I/O operations (channels).

### Using C3's intrinsic std::io functions
<dinner break - will add content soon>

<hr>

### Now that you have learnt the basic structure and terminology of a fundamental C3 program, try adding more `io::printfn()` statements which print your name, a number, and other stuff you like!
