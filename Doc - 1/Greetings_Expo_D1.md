In Greetings.c3, we see the basic fundamental structure of the C3 language.

<hr>

## Modules
`modules` in C3 are essentially big chunks of units of code which "encapsulates" programming related functions, classes, and data. <br><br>
In the code `Greetings.c3` we are not using any build or make files, so we have imported our `filename` as our module for comprehension. <br> <br>
`module greetings` <br>
> ! [!NOTE]
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
Where `std::io` stands for "standard input/output" modules, so that we can access them within our .c3 program!

## Compound statements, semicolons, and parentheses
In C3: <br>
-> Compound statements are a series of lines of code that execute <b>sequentially</b>, they are inside curly braces `{ ... }` <br>
-> Semicolons are "code line enders" which tell the compiler that "yo bro this line of code ends here with my presence of existence" <br>
-> parentheses are resposible for correctly declaring `functions` fn, inside `( ... )` you have what is called as "function parameters" <br>

## fn void main()
Now you might be asking, <b>what is fn?</b><br>
`fn` stands for "function" and it is a keyword declaring a function `main()` with return type `void`.<br><br>
We will learn more about datatypes soon in our next documents as we go on!<br>

## io::printfn("Greetings fellers.");
Woah, what is that weird `io::printfn` syntax? <br>
`::` in `io::printfn` in C3 is called as "module seperation operator" (in C++, `::` stands for "scope resolution operator") <br>
What is it doing? <br>
`::` or a module seperation operator here seperates the function `printfn()` from its parent module `std::io` and it looks inside the `std::io` module for a function declared as `printfn()` <br>
`io::printfn("Greetings fellers.");` is a basic `print` statement which prints whatever is inside `" ... "` to the console/terminal. <br>

<hr> 

### Now that you have learnt the basic structure and terminology of a fundamental C3 program, try adding more `io::printfn()` statements which print your name, a number, and other stuff you like!
