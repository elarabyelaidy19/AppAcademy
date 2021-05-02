def sqrt(num)
  unless num >= 0
    raise ArgumentError.new "Cannot take sqrt of negative number"
  end

  # code to calculate square root...
end

# #############################################################################

def main
  # run the main program in a loop
  while true
    # get an integer from the user
    puts "Please input a number"
    num = gets.to_i

    begin
      sqrt(num)
    rescue ArgumentError => e
      puts "Couldn't take the square root of #{num}"
      puts "Error was: #{e.message}"
    end
  end
end
