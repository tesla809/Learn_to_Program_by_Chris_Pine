#Chapter 7 
#section 4
#A Few Things to Try

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
#on page 38.) 


#You can’t stop talking to Grandma 
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

#Chapter 7 
#section 4
#A Few Things to Try

#Deaf grandma. 

puts "Hey, its your grandmother! How are you?"

while (response = gets.chomp) != 'BYE'
	if response != response.upcase
		puts "WHAT? What was that?"
	end

	if (response == response.upcase)
		puts "NO, NOT SINCE " + (1930+rand(21).to_s + "!"
	end
end

#says goodbye is BYE is said
puts 'Goodbye!'









