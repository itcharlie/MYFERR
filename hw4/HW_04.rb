###############################################################################
#
# Introduction to Ruby on Rails
#
# Lab 04
#
# Purpose:
#
# Read the steps below and complete the exercises in this file. This Lab
# will help you to review the basics of Object-Oriented Programming that
# we learned in Lesson 04.
#
###############################################################################
#
# 1. Review your solution to Lab 03. Copy and Paste your solution to
#    this file.
#
# 2. Create a new method called `increment_guess_count` that takes
#    an integer parameter and increments it by 1.
#
# 3. Create a new method called `guesses_left` that calculates how many guesses 
#	 out of 3 the Player has left. The method should take one parameter that is the 
#	 number of guesses the player has guessed so far. Use this new method in your 
#	 code to tell the user how many guesses they have remaining. 
#
# 4. Make sure to remove your local variable `guesses_left` and use the
#    new method instead.
#
# 5. Make sure to comment your code so that you have appropriate
#    documentation for you and for the TAs grading your homework. :-)
#
###############################################################################
#
# Student's Solution
#
###############################################################################

set_of_numbers = (1..10).to_a
puts set_of_numbers

secret_number = set_of_numbers.sample
messages = Hash.new
messages[:win] = "You won. You guessed my secret number"
messages[:lose] = "You have no guesses left. The secret number is " + secret_number.to_s
messages[:too_low] = "Your guess is lower than my secret number"
messages[:too_high] = "Your guess is higher than my secret number"

puts "Hello There my name is Charlie. I am the creator of this game."
puts "Please type in your name."
player_name = gets.strip
puts "Hi " + player_name + "!"
puts "You will have 3 chances to guess my secret number. My secret number is between 1 and 10"

guess_count = 0
def increment_guess_count(guess_count)
    guess_count += 1;
end

def guesses_left(guess_count)
    return 3 - guess_count.to_i
end

while 1
    
  if guess_count < 3
    puts "You have " + guesses_left(guess_count).to_s + " guesses left"  # Notify player on guesses left.
  elsif guess_count == 3
    # Notify player when no guesses left and inform player of secret number.
    puts  messages[:lose]
    exit
  end

  
  puts "Please guess the secret number."
  player_guess = gets.strip.to_i
  guess_count = increment_guess_count(guess_count)
  # If player guesses secret number inform player that he won
  if player_guess == secret_number
    
    puts  messages[:win]
    exit
    
  elsif player_guess != secret_number  
    
    if player_guess > secret_number
        # Notify player if guess higher than secret number
      
        puts messages[:too_high]
    
    elsif player_guess < secret_number
        # Notify player if guess is lower than secret number.
      
        puts messages[:too_low]

    end
  
  end

end

  

