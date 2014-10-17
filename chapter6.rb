#Learn to Program 2nd edition 
#by Chris Pine
#chapter 6- More about Methods


#list all 10 methods used so far
#.to_i, .to_s, .to_f, gets, puts, .chomp, ... ?
#also +, -, *, /!.

#Note: methods are things that do stuff
#methods are like verbs
#and all verbs need nouns to work on
#in Ruby, whenever a method is called
#there is a noun or object it is being called on
#So with that in mind, +, -, *, /! are not that suprising to be 'verbs'
#aka methods since they are doing something to the objects

#an example is:

puts ('hello' .+ 'world')		#outputs hello world
puts ((10.*9).+ 9)				#outputs 99

#because + or * is the same as .+ or .*
#they are both methods and in Ruby we use the .something
#on a object to call that something on the object
#ex: object.someMethod

#this also explains why 'pig' * 5 makes sense to computer
#but not 5 * 'pig' because pig is not a method

#also important: Ruby a method is always called on an object
#say you call puts "Hello!"
#the object is implicit, aka we are refering to it but not
#mentioning it
#that object is usually main
#to see it just put, puts self.

puts "hello"
puts self;     #the implicit object that puts is being called on 


#6.1 Fancy Strings
#.reverse reverses strings
#doesn't change original string, just makes new version of it

var1 = 'stop'
var2 = 'deliver repaid desserts'
var3 = '....TCELES B HSUP A magic spell?'

puts var1.reverse
puts var2.reverse
puts var3.reverse
puts var1				#didnt change original string
puts var2
puts var3


#Below will return a Fixnum error because we are mixing 
#integers (the result of getting the length of the name)
#with strings

#puts 'What is your full name'
#name = gets.chomp
#puts 'Did you know there are ' + name.length + ' characters'
#puts 'in your name, ' + name + '?'

#we need to convert the integer into a string like below
#note that we have if you have a space in between the name
#will count that space as well.
#So you have x amount of characters, the space being a character
#not x amount of letters
#also Ruby is expecting ASCII characters; you will have to do
#do a bit extra to get characters outside a standard American
#keyboard
puts 'What is your full name'
name = gets.chomp
puts 'Did you know there are ' + name.length.to_s + ' characters'
puts 'in your name, ' + name + '?'

#other string methods
#.upcase - turns everything to capital letters
#.downcase - turns everything into lower case letters
#.swapcase - swaps the case sizes,  so lower becomes capitalized 
#and vice versa
#.capitalize - capitalizes the first character
#note if there is a space as the first character, nothing happens

letters = 'aAbBcCdDeE'
puts letters.upcase				#AABBCCDDEE
puts letters.downcase			#aabbccddee
puts letters.swapcase			#AaBbCcDdEe
puts letters.capitalizes        #Aabbccddee
puts ' a'.capitalize			# a
puts letters 					#aAbBcCdDeE





#program to ask names individually 
#then print out each one.

#6.2 A Few Things to Try

#Angry Boss.
#Write an angry boss program that rudely asks what you want. 
#Whatever you answer, the angry boss should yell it back to you 
#and then fire you. 
#For example, if you type in I want a raise, 
#it should yell back like this:
#WHADDAYA MEAN "I WANT A RAISE"?!? YOU'RE FIRED!!￼

puts 'What do you want?'
request = gets.chomp
puts 'WHADDAYA MEAN "' + request + '"?!? YOU\'RE FIRED!!'


#Table of contents.
#Here’s something for you to do in order to play around more with center, 
#ljust, and rjust: write a program that will display a table of contents 
#so that it looks like this:

#               Table of Contents
#
#Chapter 1: Getting Started      page  1
#Chapter 2: Numbers              page  9
#Chapter 3: Letters              page 13

line_width = 40
puts ("Table of Contents".center(line_width * 2))
puts ' '
puts ("Chapter 1: Getting Started".ljust(line_width)) + ("page 1".rjust(line_width))
puts ("Chapter 2: Numbers".ljust(line_width)) + ("page 9".rjust(line_width))
puts ("Chapter 3: Letters".ljust(line_width)) + ("page 13".rjust(line_width))


#6.3- Higher Math
#check out the math

#6.4 More Arithmetic
#exponetiations **
#modulus % - returns remainder of division
#useful in finding factors
#absolute value - ()abs

#6.5 Random Number Generator
#rand- 'random' number generator
#not really random because goes by clock of computer
#but achieves enough complexity that it seems random
#note that rand(101) goes from 0-100
#always pick one number higher
#since the first number is always 0.
#Thus rand(1) always returns 0.
#because 0 is the 1st (and only) element in set.

puts rand
puts rand
puts rand
puts (rand(100))
puts (rand(100))
puts (rand(100))
puts (rand(1))
puts (rand(1))
puts (rand(1))
puts (rand(9999999999999999999999999999999999999))
puts('The weatherman siad there is a')
puts(rand(101).to_s + '% chance of rain, ')
puts('but you can never trust a weatherman')


#Seed random number- srand x - allows you to seed a number
#then get the same random numbers afterwards
#srand (alone, with no x)- allows you to get different numbers
#again after using srand x.

#same #'s appear
srand 1976
puts(rand(100))
puts(rand(100))
puts(rand(100))
puts(rand(100))

puts ''

srand 1976
puts(rand(100))
puts(rand(100))
puts(rand(100))
puts(rand(100))

puts ' '

srand
puts(rand(100))
puts(rand(100))
puts(rand(100))
puts(rand(100))


#6.6 The Math Object
#:: scope operator- get def.
#in php it allows you to call a function of class
#without instiating an object.
#I can assume it works the same way in Ruby,
#since its handy to have. Need to double check

#Math is a feature that has all the functions of 
#a scientific calculator
#note that floats are close to being the right answer, but
#NOT EXACT
#so don't trust them
#Question, because Python is used in scientific calculations
#is it any more accurate than Ruby?

puts (Math::PI)
puts (Math::E)
puts (Math.cos(Math::PI/3))
puts (Math.tan(Math::PI/4))
puts (Math.log(Math::E**2))
puts ((1 + Math.sqrt(5))/2)


#Random Number Generator




