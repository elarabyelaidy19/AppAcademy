# introduction to testing 

## TDD (Test Driven Development)
 develping programs where the **requirements** for the program are turned into **testcases**.  
 changes to program are made until the program passes the testcases.

## Basic workflow to creat a method 
 1. write a new test 
 2. run all tests & check for fail 

 . The new test should fail. If it passes, it should be rewritten

 3. Make changes to the method to satisfy the tests
 4. Run all tests & check for pass

 * if any tests fail, go to back step 3
 * if all tests pass, but more test coverage is needed, go to step 1
 * once we complete all 4 steps we have completed 1 iteration of TDD.
 * one iteration of the TDD cycle will work to add one feature to our method.
 * the desired output is only about a single requirement for the method
 * TDD itself driven by failure
 * We should only make changes to the method that  will support the test. We should not add any extra functionality.
 * if test pass think of any scenarios where you cane make it does not work
 * you **SHOULD** run previous and new tests whenever testing the method. 
 * If you are designing a method, you should think of example method calls for yourself.

 



# RSpec 

 * anatomy of RSpec project
 /example_project
  ├── lib
  │   ├── add.rb
  │   └── prime.rb
  └── spec
      ├── add_spec.rb
      └── prime_spec.rb

 * you **MUST** follow the same structure 
 *  core RSpec terms you'll see in every spec file:
  - **describe** names the method being tested
  - **it** expresses the expected behavior of the method being tested
  - **expect** shows how that behavior is tested




# exceptions:
    what ruby uses to deal with errors and unexpected events 


## types of errors:
    
 - ArgumentError
 - NameError
 - NoMethodError
 - IndexError 
 - TypeError 

 ## exceptions idiom
 - **begin...rescue**: how we react to this exception

 ## RaisingExceptions:
 - how can we make exception manually