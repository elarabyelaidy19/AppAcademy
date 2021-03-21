* we can create class by using class keyword followed by class name starting with capital letter 
* @ is how we denote a instance variable or attribute of our class.
* we can not refer to attribute without creating a getter of that attribute
* getters is a access methods not modifying
* class variables is shared with all the instances of the class whe we modify it will change to all instances. 


  an **@instance_variable** will be a distinct variable in each instance of a class; changing the variable will only effect that one instance
  a **@@class_variable** will be shared among all instances of a class; changing the variable will effect all instances because all instances of the class
  a **CLASS_CONSTANT** will be shared among all instances of a class, but cannot be changed or reassigned.


  **Class#method_name** means method_name is an instance method
  **Class::method_name** means method_name is a class method

  * class method defined by adding self.methodName, self refers to the class itself.
  * we cannot call it on an instance; instead we call it on the Dog class directly.
  *   