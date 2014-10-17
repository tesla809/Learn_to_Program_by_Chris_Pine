#Learn to Program 2nd edition 
#by Chris Pine
#Chapter 7- Flow control



#7.1 Comparison Methods
#you can compare numbers in Ruby
#no duh
#<, >, <=, >=
#== equality operator "Are these equal?"
#!= "are these different?"
#don't confuse = with ==

puts 1 < 2    	#true
puts 1 > 2      #false

#Ruby can compare strings too
#using lexicographical ordering aka
#which word comes first in the dictionary

puts 'cat' < 'dog'

#note that Ruby orders capital letters before lower case letters
#so

puts 'Xander' < 'bug lady'    #will be true

#fix this by making sure they are 
#in same case

puts 'bug lady'  < 'Xander'           #false
puts 'bug lady'.downcase < 'Xander'   #true

#interesting to note that
#in string characters, '1' doesn't follow that it comes
#before '2'. So you can't really order them ironically.
#and you get a false.
#the true and false are special objects that represent
#truth and falsity
#then Ruby just uses .to_s to output it on screen

puts 2 < 10       #true
puts '2' < '10'   #false

#these two results, true or false leads to the concept of
#branching

# 7.2 Branching
puts 'Hello, what\'s your name ?'
name = get.chomp
puts 'Hello, ' + name + '.'

#conidtional statment here.
#note always indent if statements
#increases readability and easier to debug later
if name == 'Chris'
	puts 'What a lovely name!'
end

#using the if ... else allows for true or false branching
puts 'I am a fortune-teller. Tell me your name:'
name = gets.chomp

if name == 'Anthony'
	puts 'I see great things in your future.'
else
	puts 'Your future is ... oh my! Look at the time!'
	puts 'I really have to go, sorry!'
end



