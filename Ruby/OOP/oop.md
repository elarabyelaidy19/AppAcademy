# inhertance 
 * extending class 
 * child overrides some of parent methods
 * the child class will clas the original definition parent class using **super** 
# the word super 
 * calling implicity without passing any arguments 
 * calling explicity with passing an aregumnts, its common happen in initialize 

# Exceptions and Error Handling 
 * **raise** used to raise exception instead of returnung 
 * **rescue**  
 * **ensure** there is must run code if there is exception or not
 * **retry** repeat the bgine block from beginning until an operation complete succefully 
 * implicit begin blocks 
 * you can add an error message so the user knowa what wnt wrong 
 * there are exceptions class in ruby 

# Decomposition into objects
 * breaking complex problems into classes or functions 

# inheritance and DRY 
 * when defining a class avoid duplicating code 
 * you can write a **generic** clde that can process any kind of the same type 
 * do not introduce subclasses untill you are facing two diffrent subclasses of the base class AND two SC have diffrent behavior 
 * do not use inheritance untill it serve a purpose


# Encapsulation/Information hidding 
 * **private metods** the only way to access is within the class itself
 * all methods after private are private to the class 
 * Ones which users of the class should not call, either for safety reasons or because they're low level details that do not concerns them
 * instance are private, you expose them with attr_accessor 


 ```ruby 
   class Airplane
  def fly
    start_engine
    ...
  end

  private
  def start_engine
    ...
  end
end
 ```


# UML 
 * Unified Modeling Language describe classes and behavior 
 * classes can relate to each other in several differnt way 
 * **"has a"** relationship for example Piece is the parent Pawn is child and Game has Board
 * component of class UML 
  * name 
  * set of attributes marked (+) for public, (-)private, (#)protected  
  * set of methods marked underlined

## Exampole of UML 
  * https://assets.aaonline.io/fullstack/ruby/assets/Chess_Diagram.png 


# Modules 
 * module consits of methods that can be mixed in to a ruby classes
 * we mix in a module using **include** 
 * **extend** method mix in class methods as class methods 

# Load/require/require_relative
 * **require** looking for files in same dir you can write explict paths to looking outside file directory  `code` require './board.rb'
 * **require relative** it looking for the root of the source file `code` require_relative 'board'
 * **laod** laod files it can load the sam file more than once, it helps more with REPL, do not use it in source file  
 * 
