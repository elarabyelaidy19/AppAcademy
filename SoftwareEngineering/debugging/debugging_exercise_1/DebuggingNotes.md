# Using pry
 - **ls String**  >> list string methods
 - **show-doc String#end_with?**  >> shows a documentation summary about given method
 - **load "filename.rb**  >> load file into pry session
 - **show-source String#include?**  >> see code that implement  a method 

 * read more https://github.com/pry/pry/blob/master/README.md  


# USing Byebug

## Byebug cheetsheet
### before running your file 
 - require "byebug" - add to the top of your file to gain access to the gem
 - debugger - place this line at a point in your file where you want to begin debugger mode

### while in debugger mode
- l <start line>-<end line> - list the line numbers in the specified range
- step or s - step into the method call on the current line, if possible
- next or n - move to the next line of executed code
- break <line num> or b <line num> - place a breakpoint at the specified line  number, this will pause execution again
- continue or c - resume normal execution of the code until a breakpoint.
- display <variable> - automatically show the current value of a variable.