class Code
  attr_reader :pegs
  
  POSSIBLE_PEGS = {
    "R" => :red,
    "G" => :green,
    "B" => :blue,
    "Y" => :yellow
  }



  def self.valid_pegs?(chars) 
    chars.all? { |c| POSSIBLE_PEGS.has_key?(c.upcase) } 
  end   

  def self.random(length)
    arr_pegs = []
    length.times { arr_pegs << POSSIBLE_PEGS.keys.sample }
    Code.new(arr_pegs)
  end 


  def initialize(pegs) 
    if Code.valid_pegs?(pegs) 
      @pegs = pegs.map(&:upcase) 
    else 
      raise "does not contain valid pages" 
    end 
  end 

  def self.from_string(pegs)
    Code.new(pegs.split(''))
  end 

  def [](index) 
    @pegs[index]
  end 

  def length
    @pegs.size
  end 

  def num_exact_matches(code) 
    count = 0 
    (0...code.length).each do |i| 
      count += 1 if code[i] == self[i] 
    end
    count 
  end 

  def num_near_matches(code) 
    count = 0 
    (0...code.length).each do |i| 
      if code[i] != self[i] && self.pegs.include?(code[i]) 
        count += 1 
      end 
    end 
    count
  end 

  def ==(code) 
    self.pegs == code.pegs
  end 

end
