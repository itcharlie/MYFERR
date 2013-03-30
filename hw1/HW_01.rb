###############################################################################
#
# Introduction to Ruby on Rails
#
# HW 01
#
# Purpose:
#
# Read the taks below and complete the exercises in this file. We will start
# to write the beginnings of our "Secret Number Game" using what we've
# learned in Ruby Lesson 01.
#
###############################################################################
#
# 1. Read an Interview with the Creator of Ruby
# 	 http://linuxdevcenter.com/pub/a/linux/2001/11/29/ruby.html
#
# 2. Read this Introduction to Programming
# 	 http://en.wikiversity.org/wiki/Introduction_to_Programming/About_Programming
#
# 3. In this file under "Student Solution," print the welcome text of your Secret 
#    Number Game
#
#	(i.e.) "Welcome to the Secret Number Game!"
#
# 4. Above your welcome message, write a comment to other coders introducing yourself.
#	 .
#
#
# 5. Create two new variables, one for your last name, one for your first name
#    and enter your first and last name as strings.
#
#    first_name = ""
#    last_name = ""
#
# 6. Print to the screen that your game was created by you by concating the
#    first and last name variables.
#
#    (i.e.) "Created by " + first_name + " " + last_name
#
# 7. Feel free to add more lines of text or add comments to remind you of what
#    you've learned.
#
###############################################################################
#
# Student Solution
#
###############################################################################

#  Hello my name is Charlie Gonzalez and this is my Secret Number Game written in Ruby.
print  "Welcome to the Secret Number Game!\n"

first_name = "Charlie"
last_name = "Gonzalez"


print "Created by " + first_name + " " + last_name + "\n"

created_by = "Created by " + first_name + " " + last_name

## List of functions.

# .length
# I needed to convert to string because of string concatenation
print "length of created by msg : "  + created_by.length.to_s + "\n"

# .reverse
print "created by msg in reverse: " + created_by.reverse + "\n"

