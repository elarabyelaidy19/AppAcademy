class Person 
    attr_reader :first_name, :last_name, :age

    def initialize(first_name, last_name, age)
        @first_name = first_name
        @last_name = last_name
        @age = age
    end
    
    def ==(another_person) 
        self.first_name == another_person.first_name
    end 

    def >(another_person)
        self.age > another_person.age
    end 

     
end 


p1 = Person.new("John", "Doe", 20)
p2 = Person.new("John", "Doe", 20)
p3 = Person.new("Jane", "Doe", 30)
p p1 == p2

p p1 > p3 
p p3 > p1


class Queue 
    def initialize
        @queue = []
    end

    def [](position) 
        @queue[position]
    end 

    def []=(position, value)
        @queue[position] = value
    end 

    def enqueue(element)
        @queue << element # add to the end of the queue
    end 

    def dequeue
        @queue.shift  # remove from the front of the queue
    end 

    def queue 
        @queue ||= []
    end
end 

q = Queue.new 
q.enqueue(1)
q.enqueue(2)
q.enqueue(3)
p q.queue   
p q[0] 
p q[1]
# q.dequeue
p q[1] 

q[1] = 4
p q[1]