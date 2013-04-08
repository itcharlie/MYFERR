###############################################################################
#
# Introduction to Ruby on Rails
#
# Homework 03
#
# Purpose:
#
# Read the links below and complete the exercises in this file. This Lab
# is to help you better understand Arrays, Hashes and Loops that we
# learned in Lesson 03.
#
###############################################################################
#
# 1. Review your solution to Lab 02. Copy and Paste your solution to
#    this file.
#
# 2. Create a new Array variable called `set_of_numbers`, this will be
#    a range between 1 - 10 that our Player will guess from. Each value
#    in the Array should be an integer.
#
# 3. Change the variable `secret_number` (HW_02) so that instead of a hard-coded
#    Integer, it randomly chooses one of the options from `set_of_numbers`
#    ('secret_number' is the integer our Player will try to guess).
#
#      Hint: Look up Array#sample in the Ruby documentation.
#
# 4. Create a new Hash variable called `messages`. In this Hash will be
#    four Keys Value pairs:
#
#    1. :win - A String telling the Player that they have won.
#
#    2. :lose - A String telling the Player that they have lost and what
#       the correct number was.
#
#    3. :too_low - A String telling the Player that their guess was too
#       low.
#
#    4. :too_high - A String telling the Player that their guess was too
#       high.
#
# 5. Change the behavior of your program, so instead of hard coding, use the principles of DRY(don't repeat yourself). 
#    This means using a Loop to iterate over your code either until the Player has guessed the
#    correct number, or they have tried to guess 3 times.
#
# 6. Make sure to comment your code so that you have appropriate
#    documentation for you and for the TAs grading your homework. :-)
#
###############################################################################
#
#Put your solution below this line.
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

#### COPY OF OLD SOLUTION with some minor changes.
puts "Hello There my name is Charlie. I am the creator of this game."
puts "Please type in your name."
player_name = gets.strip
puts "Hi " + player_name + "!"
puts "You will have 3 chances to guess my secret number. My secret number is between 1 and 10"

guesses_left = 3

#  Keep asking for secret number until no guesses left.
while guesses_left > 0
  
  puts "Please guess the secret number."
  player_guess = gets.strip.to_i
 
  # If player guesses secret number inform player that he won
  if player_guess == secret_number
    
    puts  messages[:win]
    exit
    
  elsif player_guess != secret_number  # If player guessed wrong number decrease number of guesses.
    
    guesses_left -= 1
    
    if player_guess > secret_number # Notify player if guess higher than secret number
      
      puts messages[:too_high]
    
    elsif player_guess < secret_number # Notify player if guess is lower than secret number.
      
      puts messages[:too_low]

    end
  
  end
  if guesses_left >0
    puts "You have " + guesses_left.to_s + " guesses left"  # Notify player on guesses left.
  elsif guesses_left == 0
    # Notify player when no guesses left and inform player of secret number.
    puts  messages[:lose]
  end
  
  
end
