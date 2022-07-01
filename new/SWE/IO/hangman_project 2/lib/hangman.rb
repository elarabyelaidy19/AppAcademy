class Hangman
  DICTIONARY = ["cat", "dog", "bootcamp", "pizza"]


  def self.random_word 
    random = DICTIONARY.sample
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
    attempted_chars.include?(char)
  end 

  def get_matching_indices(char) 
    arr = [] 
    @secret_word.each_char.with_index do |c, i| 
      arr << i if c == char  
    end 
    arr
  end 

  def fill_indices(char, arr) 
    @guess_word.each_index do |i| 
      if arr.include?(i) 
        @guess_word[i] = char 
      end
    end 
    @guess_word 
  end  

  def try_guess(c) 
    if already_attempted?(c) 
      puts "that has already been attempted" 
      return false   
    end    
    attempted_chars << c 
    @remaining_incorrect_guesses -= 1 unless @secret_word.include?(c) 
    matching = get_matching_indices(c) 
    fill_indices(c, matching)
    return true
  end 

  def ask_user_for_guess 
    puts "Enter a char:" 
    char = gets.chomp 
    try_guess(char) 
  end 

  def win? 
    if @guess_word.join("") == @secret_word 
      puts "WIN"  
      return true 
    else 
      return false
    end 
  end 
  
  def lose? 
    if @remaining_incorrect_guesses == 0 
      puts "LOSE" 
      return true 
    else 
      return false 
    end  
  end 

  def game_over? 
    if win? || lose? 
      puts @secret_word
      return true 
    end 
    false  
  end 
end
