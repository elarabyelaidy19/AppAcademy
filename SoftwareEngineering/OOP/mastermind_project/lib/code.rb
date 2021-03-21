class Code
  POSSIBLE_PEGS = {
    "R" => :red,
    "G" => :green,
    "B" => :blue,
    "Y" => :yellow
  }

  attr_reader :pegs

  def self.valid_pegs?(chars)
    chars.all? { |char| POSSIBLE_PEGS.has_key?(char.upcase) }
  end

  def self.random(length)
    random_pegs = []
    length.times { random_pegs << POSSIBLE_PEGS.keys.sample }
    Code.new(random_pegs)
  end 

  def self.from_string(string)
    Code.new(string.split(""))
  end 
  
  def initialize(chars)
   if Code.valid_pegs?(chars)
    @pegs = chars.map { |char| char.upcase }
   else 
    raise "does not contains pegs"
   end 
  end 

  def [](index)
   return @pegs[index]
  end 

  def length
    @pegs.length
  end

  def num_exact_matches(guess)

    count = 0

    (0...guess.length).each do |i|
      if guess[i] == @pegs[i]
        count += 1
      end 
    end 

      count
  end
  
  def num_near_matches(guess)
    count = 0

    (0...guess.length).each do |i|
      if guess[i] != @pegs[i] && @pegs.include?(guess[i])
        count += 1 
      end 
    end

    count 
  end 

  def ==(guess)
    self.pegs == guess.pegs
  end  

end
