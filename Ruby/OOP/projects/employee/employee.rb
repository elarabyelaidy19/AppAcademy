class Employee 
  attr_reader :name, :title, :salary 
  attr_accessor :boss 

  def initialize(name, title, salary, boss) 
    @name = name 
    @title = title 
    @salary = salary
  end  