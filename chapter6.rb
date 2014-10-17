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






#6.1



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


#Table of contents.
#Here’s something for you to do in order to play around more with center, 
#ljust, and rjust: write a program that will display a table of contents 
#so that it looks like this:

#               Table of Contents
#
#Chapter 1: Getting Started      page  1
#Chapter 2: Numbers              page  9
#Chapter 3: Letters              page 13


#6.3- Higher Math

#6.4 More Arithmetic

#Random Number Generator
#interesting, rand(1) always returns 0.


#6.5 The Math Object



