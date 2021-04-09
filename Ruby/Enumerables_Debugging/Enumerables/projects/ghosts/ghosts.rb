require "set" 
require "player" 

class GhostGame 

  ALPHABET = ("a".."z") 
  MAX_LOSS_COUNT = 5 

  def initialize(*players) 
    words = File.readlines("dictionary.txr").map(&:chomp) 
    @dictionary = Set.new(words) 
     