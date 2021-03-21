class Hangman
  DICTIONARY = ["cat", "dog", "bootcamp", "pizza"]

  def self.random_word 
    DICTIONARY.sample 
  end 

  def initialize
    @secret_word = Hangman.random_word
    @guess_word = Array.new(@secret_word.length, "_")
    @attempted_chars = []
    @remaining_incorrect_guesses = 5
  end 

  def guess_word
    @guess_word
  end 

  def attempted_chars
    @attempted_chars
  end 

  def remaining_incorrect_guesses
    @remaining_incorrect_guesses
  end 

  def already_attempted?(char)
     @attempted_chars.include?(char)
  end 

 
  def get_matching_indices(char)
    indices = []

    @secret_word.each_char.with_index do |curr_char, i|
      indices << i if curr_char == char
    end

    indices
  end

  def fill_indices(char, indices)
    indices.each { |index| @guess_word[index] = char }
  end

  
  def try_guess(char)
    if already_attempted?(char)
     p  " that has already been attempted"
      return false
    end
    @attempted_chars << char

    matching_indices =  get_matching_indices(char)
    fill_indices(char, matching_indices)
    if matching_indices.empty?
      @remaining_incorrect_guesses -= 1
    end 
    true 

  end  

  def ask_user_for_guess
    puts "Enter a char "
    try_guess(gets.chomp)
  end 

  def win? 
    if @guess_word.join("") == @secret_word
      puts "WIN"
      return true
    end 
    false 
  end  

  def lose?
    if @remaining_incorrect_guesses == 0
      puts "LOSE"
      return true 
    end 
    false 
  end 

  def game_over?
    if win? || lose?
      puts @secret_word
     return true 
    end 
    false 
  end     

end 


