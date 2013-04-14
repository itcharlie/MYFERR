class Game
#	Make sure that all the instance variables in this class may only be READ and not WRITTEN to. 
  attr_reader :guesses_allowed, :current_guess_count, :current_guess

  @@messages = { win: "You won!",
                 lose:  "You lost! :-(",
                 too_low: "Your guess was too low!",
                 too_high: "Your guess was too high!" }


	# Initializes The number of guesses (or tries) a player is allowed before the game ends.
	# You should default number of guesses to 3 if the parameter is null.
	# Sets a guess counter to zero.
	# Creates a new instance of the Player class. 
	# Creates a new instance of the SecretNumber class and assigns it to the secret_number. Don't forget to pass along the
	# necessary parameters.
  	# initializes the current guess to nil
  def initialize(guesses_allowed=3, set_of_numbers)
    @guesses_allowed = guesses_allowed
    @current_guess_count = 0
    @player = Player.new
    @secret_number = SecretNumber.new(set_of_numbers)
    @current_guess = nil
  end
  

  # Print who made this wonderful program :-)
  def print_created_by
    puts "Hello There my name is Charlie. I am the creator of this game."
  end
  
	# Calls `print_created_by` so that your players knows you created the game.
	# Asks the player to enter his/her name. Save it to @player.name.
	# Print out the number of guesses the players gets and the range of numbers they can choose from.
	# Asks the player for his/her guess. Use the `guess_correct?` method to verify the guess.
	# Continue to ask the user to guess the number so long as they have not maximized the number of guesses allowed 
	# and they did not guess correctly. 
    # Each time tell the player how many guesses left they have.
	# If at the end of the loop they still did not guess correctly, tell the player that they have lost using the
	# `@@messages` class variable and tell them the secret number.
  def start_game
    print_created_by
    @player = Player.new
    puts "Please type in your name"
    @player.name = gets.strip
    puts "\nHi #{@player.name}!"
    puts "You will have #{ guesses_left } chances to guess my secret number. My secret number is between 1 and 10"
    
    while 1
        puts "Please guess the secret number."
        @current_guess = gets.strip.to_i
        increment_guess_count
        correct = guess_correct?(@current_guess)
        if correct
            exit
        elsif guesses_left == 0
            puts @@messages[:lose]
            puts "\nThe secret number was #{ @secret_number.secret_number}"
            exit            
        end
        
    end


  end

	# This method checks if the player guessed the correct secret number. 
    # It shoudl print out if they guessed correctly or guessed too high or too low.
	# Use the `@@messages` Hash to display this feedback.
	# Also let the player know how many guesses they have left.
	# If the guess is correct, make sure to return true, otherwise return false.
  def guess_correct?(guess)
    if  @secret_number.secret_number == guess
        puts @@messages[:win]
        return true
    elsif @secret_number.secret_number > guess
        puts @@messages[:too_low]
        puts "You have #{ guesses_left } guesses left"
        return false
    elsif @secret_number.secret_number < guess
        puts @@messages[:too_high]
        puts "You have #{ guesses_left } guesses left"
        return false
    end
    
  end

  # This method should increment every time the player guesses incorrectly.
  def increment_guess_count
    @current_guess_count += 1;
  end
  
  # Calculates the guesses the player has left.
  def guesses_left
    return 3 - @current_guess_count
  end

end

