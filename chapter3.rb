#Learn to Program 2nd edition 
#by Chris Pine
#Chapter 3- Letters

#3.1 String Arithmetic
#Group of letters are called a string
#strings can have different punctuation, digits, 
#symbols, and spaces in them as well.

#like this 
puts "Hello World"
puts ''
puts "Good-bye"
puts "Snoopy says #%^?&*@! when he stubs his toe."

#3.1 String Arithmetic
#strings can do basic arithmetic

#you can concatenate strings together
#but don't forget the space inside the string
puts "I like" + " apple pie"



#3.2 12 vs. '12'
#numbers can be numbers or digits(ie part of a string)
#12 is a number which can be manipulated mathematically
#"12" is a digit, because it is a string.

#numbers that are integers and can be manipulated
#mathematically
puts 12 + 12

#this is equivalent to adding two strings together
#because of the quotations
puts '12' + '12'

#this is just a string and no numerical manipulation
#or addition is taking place.
puts "12 + 12"



#3.2 Problems

#The code below won't work because you cannot 
#add a string and a number.
#In Ruby, you cannot also multiply two strings 
#together either
#puts '12' + 12
#puts '2' * '5'

#You cannot add Betty to 12
#or multiply Fred by John.
#How would you logically anyway?
#puts "Betty" + 12
#puts 'Fred' * 'John'

#and interesting thing
puts 'pig' * 5
#is legal since it outputs pig 5 times
#think of it as x * 5 which is five Xs

#but you can't do 
#puts 5 * 'pig'
#which means take 5 and multiply it by pig
#that is poetic, but the computer 
#does not understand it.



#Escape Characters
#Backslash or \, is called the escape character
#say you want to place 

#puts 'You're swell

#it wont let you because it will result in an
#error

#Use the \' to express the ' in your code.
#puts 'You\'re swell'

#you can also use the double quotations first
#the inside the single quotations to avoid
#problems
puts "You're swell"

#and use the concept of the escape charater 
#in situations where you need to use 
#double quotations
puts "She said \"Who are you!\" in suspense!"

#Escape characters can escape themselves too
puts 'You\'re swell'
puts 'backslash at the end of a string: \\'
puts 'up\\down'
puts 'up\down'

#note that the backslash does not escape with d
#so it escapes itself.












