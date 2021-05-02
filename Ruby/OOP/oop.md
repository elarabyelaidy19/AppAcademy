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
 *  
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
