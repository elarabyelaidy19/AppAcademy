# dynamic and static language 
 - dynamic language compile and  excute programming behaviors at runtime. 
 -  static language compile and excute during compilation time.

# Reflective 
- ability of a program to maniuplate its own structure and behavior as data.

# OOP 
 - programming paradigms that privilegs objects rather tha actions and data rather than functions or logic 
 - objects are instrances of classess, contains data in fields known as atributes.
 - **incapsulation** place all the code with a particular set of data in one class 
 - **information hidden** Hide methods and data essential only to a class's internal workings.

# Multi-Paradigm
 - **Procedural programming** privileges procedure invocations, i.e., method calls. In procedural programming, the
   programmer specifies a series of procedures that operate on data structures in systematic order. 
 - **functional programming** 
   -  privilegs pure functions, those who return values only determind by the input, without  
     side effects as change in the state.
   - Adherents of functional programming conceive of computation as the evaluation of mathematical functions.  
   - **anonymous functions** function that capture values in the context when they are defined.
   - **higher order functions** functions that can accept function as arguments and return functions.

# Ruby philosophy 
 'help every programmer to be productive, enjoy programming, and be happy' 

# Test-Driven Development (TDD)
TDD is a process for writing software. Its basic steps are as follows: 
- Add a test
- Run all the tests and make sure the new test fails
- Write code
- Run all the tests and make sure the new test passes
- Refactor the code.

# Behavior-Driven Development (BDD)
- BDD is an extension of TDD. It structures the testing process through the use of user stories - a description of the  user's use of the feature being developed. The goal of the user story is to help focus the developer on what to test and what not to test.

# Unit Test
Unit testing is a way of testing an application by breaking the application down into its smallest constituent parts and testing each part in isolation. In order to test parts of an application that rely on other code, unit tests typically use mock objects to make sure that problems elsewhere in the code won't cause the tests to mistakenly fail.

Unit testing is often automated at larger or more sophisticated companies.

# Integration Test
Integration testing is a form of testing in which units of code are combined ("integrated") and the results of their interactions are tested. This type of testing is done after each of the individual units has been tested.

# Test Coverage
"Test coverage" refers to how much of a software program has been tested. This can refer to several things, including the percentage of functions that have been called by the test suite, or the percentage of statements in the code that have been executed by the test suite. 


# Debugging 
 - it takes 10x of time to debuge code as to write it. master debugging and you master programming.

## Rules 
 - **READ THE ERROR**
 - Perform a Mental **Stack Trace**
 - **Write code that's testable**, write all your code inside of methods.
 - **Pay technical debt**,  fix the design immediately. refactoring will probably create new bugs to fix.
 - **Don't read the source** Do not spend more than 1min doing this in real life.
 - Use a REPL to isolate the problem **PRY**
 - use debugger **bybug**

# Common Exception 
 *  NameError 
    occur when you try to use variable oe method that hasn't be defined 
  * Uinitalized Constant didn't find the class or the constant 
  * **NoMethodError** call method that does'nt exist 
  * **ArguementError** passed the wrong number of arguements 
  * **TypeError pass** the wrong type of thing to a method 
  * **LoadError gem** does not exit, error with file path 
  * **SyntaxError**  writing ungrammatical ruby code 
  
# More Byebug Commands:
# Debugging CheetSheet 
 * find the top error line that looks familiar. a. If the line is familiar: stick a debugger on the line above the error. b. If the line is not familiar: cut everything out and start adding things back until the error changes. c. If there’s no error message at all: head to the first user-facing part of your code.
 * Stick the debugger in, poke around on the line directly above the error. Example debuggers for a few languages: byebug (ruby), ipdb (python), debugger (javascript). [2]

  * Repeat steps 1 and 2.

# braking your methods into parts  
  * 
  * 




 `code()`
 ~~~ java 
