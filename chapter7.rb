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


#another sub program example
#harsh 7th grade teacher lol
#its important to keep indentations,
#if not program will be hard to read
#comments are very useful in programming
#to help maintain code
#other people might work on code too
#so its good for them to know whats going on.

#writing code and testing it out as you do it 
#is a great way to break the problem down 
#into modular bits
#the author stated that putting in the
#if else end first, then concentrating
#on portions that he needed to work on 
#simplifies the process, and allows for 
#avoid erros and testing, every step of the
#way
#a great point.

puts 'Hello, and welcome to seventh grade English'
puts 'My name is Mrs. Gabbard. And your name is...?'
name = gets.chomp

if name == name.capitalize
	puts 'Please take a seat, ' + name '.'
else 
	puts name + '? you mean ' + name.capitalize + ', right?'
	puts 'Don\'t you even know how to spell your name??'
	reply = gets.chomp

	if reply.downcase == 'yes'
		puts 'Hmmph! Well, sit down!'
	else
		puts 'GET OUT!'
	end
end

#7.3 Looping
#in looping make sure to explictly state what conditions 
#should end the loop or you will have an infinite loop
#if condition is always true, then the loop will
#run forever, until something else prompts it to be false

#while statement
#while tests your condition before looping.

#though this program works, it is a bit awkward  
input =  ''

while input != 'bye'
	puts input
	input = gets.chomp
end

puts 'Come again soon!'

#always true program
#this is a more elegent (and simple) program than the one on top

while true
	input = gets.chomp
	puts input
	if input == 'bye'
		break			#break breaks out of loop
	end
end

puts 'Come again soon'

#7.4 A little bit of logic

#In this sub-program
#returns what a lovely name if either Chris or Katy is mentioned
#exits if it is not.


#this is an ok program
#not amazing because the way it looks. 
#Chris and Katy are equivalent, but Katy
#looks subordinate to Chris 
puts 'Hello, what\'s your name?'
name = gets.chomp
puts 'Hello, ' + name + '.'

if name == 'Chris'
	puts 'What a lovely name!'
else 
	if name == 'Katy'
		puts 'What a lovely name!'
	end
end

#this is a better program
#elsif solves that
#note that itis elsif not elseif
#the e is missing.
#but still repeats itself

puts 'Hello, what\'s your name?'
name = gets.chomp
puts 'Hello, ' + name + '.'

if name == 'Chris'
	puts 'What a lovely name!'
elsif name == 'Katy'
	puts 'What a lovely name!'
end

#logical operators
#best program
#uses logical operator || or (inclusive)
#meaning it can be true if one is true
#or if both is true
#meaning one or the other or both 

#In english we use the exlcusive or XOR implicitly
#do you want soup or salad (but not both)".
#aka one or the other, but not both
#|| means or
#it reduces the complexity and keeps with DRY principle

puts 'Hello, what\'s your name?'
name = gets.chomp
puts 'Hello, ' + name + '.'

if name == 'Chris' || name == 'Katy'
	puts 'What a lovely name!'
end

#&& is and
#! is not
#works with fundamentals of logic tables in discrete structures

i_am_chris = true
i_am_purple = false
i_like_beer = true
i_eat_rocks = false

puts i_am_chris && i_like_beer			#true
puts i_like_beer && i_eat_rocks			#false
puts i_am_chris && i_like_beer			#false			
i_am_purple && i_eat_rocks				#false

puts #space

puts i_am_chris || i_like_beer			#true
puts i_like_beer || i_eat_rocks			#true
i_am_purple || i_like_beer				#true
i_am_purple || i_eat_rocks				#false

puts !i_am_purple						#true
puts !i_am_chris						#false


#you can use 'true' boolean value 
#but it still says stop before we can exit out the program
#aka the loop runs once before we can stop
while true 
	puts 'What would you like to ask C to do?'
	request = gets.chomp

	puts 'You say, "C, please ' + request + '"'
	puts '"C ' + request + '."'
	puts '"Papa ' + request + '."'
	puts '"Mama ' + request + '."'
	puts '"Ruby ' + request + '."'
	puts '"Nono ' + request + '."'
	puts '"Emma ' + request + '."'

	if request == 'stop'
		break
	end
end

#7.4 A Few Things to Try

#“99 Bottles of Beer on the Wall.” 
#Write a program that prints out the lyrics 
#to that beloved classic, “99 Bottles of Beer on the Wall.”
puts 'Lets sing a song!'
counter = 99
while counter <= 99 && counter != 0
    puts counter.to_s + ' bottles of beer on the wall, ' + counter.to_s + ' bottles of beer.'
    puts 'Take one down, pass it around, ' + counter.to_s + ' bottles of beer on the wall...'
    
    counter = counter - 1

    if counter == 0
		puts counter.to_s + ' bottles of beer, on the wall!'
		puts 'Hey, lets go to the store and get some more!'
		break
	end
end




#Deaf grandma. 
#Whatever you say to Grandma (whatever you type in), 
#she should respond with this:
#HUH?! SPEAK UP, SONNY!
#unless you shout it (type in all capitals). 
#If you shout, she can hear you (or at least she thinks so) 
#and yells back:
#NO, NOT SINCE 1938!

#To make your program really believable, 
#have Grandma shout a different year each time, 
#maybe any year at random between 1930 and 1950. 
#(This part is optional and would be much easier 
#if you read the section on Ruby’s random number generator 
#on page 38.) You can’t stop talking to Grandma 
#until you shout BYE.
#Hint 1: Don’t forget about chomp! 'BYE' with an Enter 
#at the end is not the same as 'BYE' without one!
#Hint 2: Try to think about what parts of your program 
#should happen over and over again. 
#All of those should be in your while loop.
#Hint 3: People often ask me, 
#“How can I make rand give me a number in a range not 
#starting at zero?” Well, you can’t; rand just doesn’t work 
#that way. So, I guess you’ll have to do something to 
#the number rand returns to you.



#Deaf grandma extended. 
#What if Grandma doesn’t want you to leave?
#When you shout BYE, she could pretend not to hear you. 
#Change your previous program so that you have to shout BYE 
#three times in a row. 
#Make sure to test your program: 
#if you shout BYE three times but not in a row, 
#you should still be talking to Grandma.

#Chapter 7 
#section 4
#A Few Things to Try

#Deaf grandma extended
#simple solution to problem
#simple is better.

puts "ME SO LONELY! TALK TO ME!\n"
bye = 0
#instead of using BYE as a condition to run while loop
#just use bye as a counter.
#it reduces the amount of code needed and keeps things simple
#and easy to understand / maintain 
while bye < 3
  response = gets.chomp
  if response == "BYE"
    puts "STAY LONGER!?!"
    bye = (bye+1)
  elsif response == response.upcase
  	#simple way to output random year between
  	#1930 - 1950
  	##{} allows substitution in string variable
    puts "NO! NOT SINCE #{1930+rand(21)}!"
    #resets bye to 0, because bye needs to happen 3x in a row
    bye = 0
  else
    puts "Huh?! QUE!? I CAN'T HEAR YOU!"
    #resets bye to 0, because bye needs to happen 3x in a row
    bye = 0
  end
end



#Leap years. 
#Write a program that asks for a starting year 
#and an ending year and then puts all the leap years 
#between them (and including them, if they are also leap years). 
#Leap years are years divisible by 4 (like 1984 and 2004). 
#However, years divisible by 100 are not leap years 
#(such as 1800 and 1900) unless they are also divisible by 400 
#(such as 1600 and 2000, which were in fact leap years). 
#What a mess!

puts "The Leap Year Program"
puts ""
puts "What is the starting year?"
startYear = gets.to_i
puts "What is the ending year?"

#checks if valid entry
#also gets end year while at it.
while (endYear = gets.to_i) < startYear
    puts "Your end year must be LATER than your start year. Please re-submit:"
end

#simple, clear, concise while loop conditional
#no need for a counter
while startYear < endYear
	#the insight here is in using a double while loop
	#no need for if statements.
	#also the coditional logic is clear.
	#if divisable by 4, but not by 100
	#or divisable by 100 and 400
    while ((startYear % 4 == 0 and startYear % 100 != 0) or (startYear % 100 == 0 and startYear % 400 == 0))
        puts startYear.to_s
        #simple increment
        startYear = startYear + 1       
    end
    startYear = startYear + 1
end