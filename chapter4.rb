#Learn to Program 2nd edition 
#by Chris Pine
#Chapter 4- Variables and Assignment

#Variables make it easy for programmers
#to keep with the principle of DRY
#Don't Repeat Yourself
#its easier to manage programs that way
#variables can point to strings, math expressions,
#other objects, EXCEPT other variables.
#variables cannot point to other variables,
#and expect the other varibles to update
#when the original varible is updated
#(see below)

#we can do this
puts "... you can say that again"
puts "... you can say that again"

#but what if we have to say that 100 more times
#we will have to copy and paste 98 more times
#what happens if we want to change the sentance?
#We will have to change 100 individual lines
#a huge waste of time.

#So, variables helps programmers keep things 
#easy... so that we can read reddit, lol

#variables can point to strings
#this is a more elegant code
#though not the most elegant yet.
my_string = "... you can say that again"
puts my_string
puts my_string

#the string "... you can say that again" was saved
#in the bucket we call my_string
#another way to think about it is by saying that
#the variable my_string points to the string
#"... you can say that again"

#the proper way to say this is that the string
#"... you can say that again" was ASSIGNED 
#to the variable my_string

#variable names
#a note on varibales, they can be called anything
#but cannot start with a capital letter, number, 
#punctuation mark, or have a space in between them

#My_string, my string, 1string, &string 
#are all illegal and will not be accpeted
#by computer.

#the best thing about strings is that you can
#use them multiple times and only have to make
#edits in one place

name = 'Anya Christina Emmanuella Jenkins Harris'
puts 'My name is ' + name + '.'
puts 'Wow!' + name
puts 'is a really long name'

#if we were to change this long ass name,
#we would only have to do so in one place.


#Assign and reassign
#Just as we can assign an object to a variable
#we can reassign a differnet variable to it.

composer = 'Mozart'
puts composer + 'was "da bomb" in his day.'

composer = 'Beethoven'
puts 'But I prefer ' + composer + ', personally.'

#variables can point to any kind of object,
#not just strings

#string
my_own_var ='just another ' + 'string'
puts my_own_var

#math expression
my_own_var = 5 * (1+2)
puts my_own_var

#variables can point almost anything except other
#variables

var1 = 8
var2 = var1
puts var1
puts var2

puts ''

var1 = 'eight'
puts var1
puts var2

#outputs
#8
#8
#
#eight
#8
#the 1st variable was set to 8
#the 2nd was set to what the 1st was
#then the 1st variable was updated
#and logically you would think the 2nd variable
#would update too, right?
#no, it still pointed to the value of the 
#1st variable, 8.