require_relative 'item.rb'

class List 
    
    LINE_WIDTH = 42
    INDEX_COL_WIDTH = 5
    ITEM_COL_WIDTH = 20
    DEADLINE_COL_WIDTH = 10


    attr_accessor :label

    def initialize(label)
        @label = label
        @items = []
    end 

    def add_item(title, deadline, description='') 
        item = Item.new(title, deadline, description) 
        @items << item 
        true
    end 

    def size 
        @items.size
    end 

    def valid_index?(index) 
        raise "not a valid inex " unless index.between?(0, self.size) 
        true
    end 

    def swap(index1, index2) 
        valid_index?(index1) && valid_index?(index2)
        @items[index1], @items[index2] = @items[index2], @items[index1] 
        true
    end

    def [](index) 
        @items[index]
    end 

    def priority 
        @items.first
    end 

    

    def print
        puts "-" * LINE_WIDTH
        puts " " * 16 + self.label.upcase
        puts "-" * LINE_WIDTH
        puts "#{'Index'.ljust(INDEX_COL_WIDTH)} | #{'Item'.ljust(ITEM_COL_WIDTH)} | #{'Deadline'.ljust(DEADLINE_COL_WIDTH)}"
        puts "-" * LINE_WIDTH
        @items.each_with_index do |item, i|
            puts "#{i.to_s.ljust(INDEX_COL_WIDTH)} | #{item.title.ljust(ITEM_COL_WIDTH)} | #{item.deadline.ljust(DEADLINE_COL_WIDTH)}"
        end
        puts "-" * LINE_WIDTH
    end

    def print_full_item(index)
        item = self[index]
        return if item.nil?
        puts "-" * LINE_WIDTH
        puts "#{item.title.ljust(LINE_WIDTH/2)}#{item.deadline.rjust(LINE_WIDTH/2)}"
        puts item.description
        puts "-" * LINE_WIDTH
    end

    def print_priority 
        print_full_item(0)
    end 

    def up(index, amount = 1) 
        return false unless valid_index?(index) 
        
        while amount > 0 && index > 0 
            swap(index, index-1) 
            index-=1 
            amount-=1 
        end 
        true
    end 

    def down(index, amount=1) 
        return false unless valid_index?(index) 

        while amount > 0 && index != size - 1
            swap(index, index+1) 
            index+=1 
            amount-=1
        end 
        true
    end 

    def sort_by_date!
        @items.sort_by! { |item| item.deadline }
    end 

end 