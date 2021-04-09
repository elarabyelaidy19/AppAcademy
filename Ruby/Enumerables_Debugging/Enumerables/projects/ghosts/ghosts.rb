require "set" 
require "player" 

class GhostGame 

  ALPHABET = ("a".."z") 
  MAX_LOSS_COUNT = 5 

  def initialize(*players) 
    words = File.readlines("dictionary.txr").map(&:chomp) 
    @dictionary = Set.new(words) 
    @players = players 
    @losses = Hash.new { |losses, player| losses[player] = 0 }
  end 


  def add_letter(letter)  
    fragment << letter
  end  

  def valid_play?(letter) 
    return false unless ALPHABET.include?(letter)
    potential_fragment = fragment + letter 
    dictionary.any? { |word| word.start_with?(potential_fragment) }  
  end 

  def current_player 
    @players.first 
  end 

  def next_player 
    players.rotate! 
    players.rotate! until losses[current_player] < MAX_LOSS_COUNT 
  end 

  def is_word?(fragment) 
    dictionary.include?(fragment) 
  end 

  def round_over?
    is_word?(fragment) 
  end 

  def previous_player
    (players.count - 1).downto(0).each do |idx| 
      player = players[idx] 

      return player if losses[player] < MAX_LOSS_COUNT 
    end 
  end  

  def remaining_players 
    losses.count { |k, v| v < MAX_LOSS_COUNT } 
  end 

  def winner 
    (player, k) = losses.find { |k, losses| losses < MAX_LOSS_COUNT } 
    player
  end 

  def record(player) 
    count = losses[player] 
    "GHOST".slice(0, count) 
  end  

  def welcome 
    system("clear") 
    puts "let's play a round of ghosts" 
  end 

  def take_turn 
    system("clear") 
    puts "I'ts #{current_player}'s turn!" 
    letter = nil 

    until letter 
      letter = current_player.guess(fragment) 

      unless valid_play?(letter) 
        current_player.alert_invalid_move(letter) 
        letter = nil 
      end 
    end 

    add_letter(letter) 
    puts "#{current_player} added the letter #{letter} " 
  end 

  def display_standings 
    puts "current standing:" 
    
    players.each do |player|
      puts "#{player}: #{record(player)}"
    end 

    sleep(2) 
  end 


 









