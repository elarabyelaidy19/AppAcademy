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

  def current_player 
    @players.first 
  end 

  def next_player 
    players.rotate! 
    players.rotate! until losses[current_player] < MAX_LOSS_COUNT 
  end 


