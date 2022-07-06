require_relative "room"

class Hotel  
    
    
    def initialize(name, hash) 
        @rooms = {} 
        @name = name 
        
        hash.each do |k, v| 
            @rooms[k] = Room.new(v) 
        end 
    end 

    def name 
        @name.split(" ").map { |w| w.capitalize! }.join(" ")
    end  

    def rooms 
        @rooms
    end 

    def room_exists?(room) 
        @rooms.has_key?(room)
    end  

    def check_in(person, room) 
        if self.room_exists?(room) 
            if @rooms[room].add_occupant(person) 
                p 'check in successful' 
            else 
                p 'sorry, room is full'
            end 
        else 
            p 'sorry, room does not exist'
        end  
    end  

    def has_vacancy?  
        @rooms.values.any? { |room| room.available_space > 0 }
    end 

    def list_rooms 
        
        @rooms.each do |k, v| 
            puts "#{k}:#{v.available_space}" 
        end 
        
    end 
end
