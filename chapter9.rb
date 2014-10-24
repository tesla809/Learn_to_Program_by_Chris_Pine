#Learn to Program 2nd edition 
#by Chris Pine
#Chapter 9- Writing Your Methods


#loops and iterators allow us to run the same code
#over and over again
#However, there are times when we want to do the same
#thing in different places

#so we create our own methods aka functions


#long and repetitive program 
#that can be made simpler using our own methods

puts 'Hello, and thank you for taking the time to '
puts 'help me with this experiment. My experiment'
puts 'has to do with the way people feel about'
puts 'Mexican food. Just think about Mexican food'
puts 'and try to answer every question honestly,'
puts 'either "yes" or a "no". My experiment'
puts 'has nothing to do with bed-wetting.'
puts 

#We ask these questions, but we ignore their answers.

while true
    puts 'Do you eat tacos?'
    answer = gets.chomp.downcase
	
    if (answer == 'yes' || answer == 'no')
		break
	else
		puts 'Please answer "yes" or "no"'
	end
end

while true
	puts 'Do you eat burritos?'
	answer = gets.chomp.downcase
	if (answer == 'yes' || answer == 'no')
		break
	else
		puts 'Please answer "yes" or "no"'
	end
end

# We pay attention to *this* answer, though
while true
    puts 'Do you wet the bed?'
    answer = gets.chomp.downcase
    if (answer == 'yes' || answer == 'no')
        if answer == 'yes' 
            wets_bed = true
        else
            wets_bed = false
        end
        break 
    else
        puts 'Please answer "yes" or "no".' 
    end
end

while true
	puts 'Do you eat chimichangas?'
	answer = gets.chomp.downcase
	if (answer == 'yes' || answer == 'no')
		break
	else
		puts 'Please answer "yes" or "no"'
	end
end

puts 'Just a few more questions'

while true
	puts 'Do you eat sopapillas?'
	answer = gets.chomp.downcase
	if (answer == 'yes' || answer == 'no')
		break
	else
		puts 'Please answer "yes" or "no"'
	end
end

puts 'DEBRIEFING'
puts 'Thank you for taking the time to help with'
puts 'this experiment. In fact, this experiment'
puts 'has nothing to do with Mexican food It is'
puts 'an experiment about bed-wetting. The Mexican'
puts 'food was just there to catch you off guard'
puts 'in hopes that you would answer more '
puts 'honestly. Thanks again'
puts
puts wets_bed


#when lots of repeating happens and need a variance
#use your own custom methods

#moo method
#how to say moo
#method names like variables always start with lower case letter.
#methods are always associated with an object in Ruby.
#in this case it is associated with the self object representing the 
#whole program
def say_moo
    puts 'moooooooo...'
end

#calls moo method (aka function)
#do the moo method
say_moo
say_moo
puts 'coin-coin'
say_moo
say_moo

#method parameters
#a parameter is what is given to a method. 
#think of it as the usb socket
#method > def a (b,c)<paramenters b,c
#the argument is whats plugged into the usb socket
#the arugment is what is pass thru the method when it is called.
#calling method x >x (y, z) <passing thru method x the arguments y, z
#the number and order of the parameters vs arguments have to match.
#the names don't obviously because the arguements can be variate.

def say_moo number_of_moos
	puts 'moooooooo ......' * number_of_moos
end

say_moo 3
puts 'oink-oink'

#this last line will give error because 
#the parameter is missing
#<ArgumentError: wrong number of arguments (0 for 1)>
#say_moo

#here the parameter number_of_moos points to the arugment
#then it passes that number thru the method.


#9.2 Local Variable

#this sub program has two variables
#num and num_times_2 which both sit inside method double_this
#they are also local variables, and can only be accessed inside
#the method in which they are instatiated in.
def double_this num
	num_times_2 = num * 2
	puts num.to_s + ' double is ' + num_times_2.to_s
end

double_this 4

#puts num_times_2.to_s  results in an error
#<NameError: undefined local variable ‘num_times_2'>
#this is because the num_times_2.to_s does not have a global scope
#this is a great feature of Ruby because people can't mess with 
#variables from the outside.
#the global tough_var and local tough_var are not related.
#the tough_var set to nil, did not affect the global one

tough_var = 'You can\'t touch my variable'

def little_pest tough_var
    tough_var = 'ducksauce'
end

puts tough_var
little_pest tough_var

#still doesn't change the global tough_var.
puts tough_var

#the book explained it in a way that seemed 
#like it can reassign the global variable
#inside the method, which is not the case.

#Duby
#The author doesn't give a clear or very good explination about
#why scopes are important, but I already know why.
#just keep in mind that if you don't have local scopes,
#then whatever happens outside the method in the global setting
#will affect the inside of the method, if they have the same name, say x.
#it keeps the complexity of the program from getting out of hand
#and allows for modularity, allowing different people to work on
#different methods for the program, without fear that one person
#may use a similar name in the method and destroy everyone elses
#work.
#think of it like this very abstract way: 
#if you have a house without walls,
#how can you do the private things that people need to do
#without other people being affected by it? 
#if everyone your office where put the same floor
#and were forced to speak same volue
#how would you communicate with your co worker john, if there are 
#100 other johns and they can all hear you?


#9.4 return values

#return and puts are different
#5 + 3 returns 8, but it does not output 
#aka display on the screen 8.

#every method has to return something
#the puts method always returns nil.

returns_val = puts 'This puts returned'
puts returns_val

#1st puts returns nil, the 2nd puts also returns nil

#quick program to see what say moo returns
def say_moo
    puts "mooo!"
end

puts say_moo 

#outputs mooo! and nil... from the puts

#note: the value returned from a method is simple the last
#expression evaluated in the method, usually the last line.

#a weird way to make your program though.
#definitely not intuitive
def say_moo_again number_of_moos
	puts 'moo! ' * number_of_moos
	'yellow submarine'
end

x = say_moo_again
puts x.capitalize + ' dude ...'
puts x + '.'


def favorite_food name
	if name == 'Lister'
		'vindaloo'
	end 					                #why not use elsif? 
	if name == 'Rimmer'						#sort of ugly program
		'mashed potatos'
	end
	'hard to say ... maybe fried plantain?' #why not use else at end?
end

#better style to create method
#its more intuitive
def favorite_drink name
	if name == 'Jean-Luc'
		return 'tea, Earl Grey, hot'
	elsif name == 'Kathryn'
		return 'coffee, black'
	else
		return 'perhaps ... horchata'
	end
end

puts favorite_food('Rimmer')
puts favorite_food('Lister')
puts favorite_food('Cher')

puts favorite_drink('Kathryn')
puts favorite_drink('Oprah')
puts favorite_drink('Jean-Luc')


#now that long ass taco program will be 
#shortened with a flexible customized method

def ask question 
	while true
		puts question
		reply = gets.chomp.downcase

		if (reply == 'yes' || reply == 'no')
			if reply == 'yes'
				answer = true
			else
				answer = false
			end
			break
		else
			puts 'Please answer "yes" or "no"'
		end
	end

	return answer 	#this is what we return true or false
					#I like to make what is being returned explicit
					#because its more intuitive.
	end

puts 'Hello, and thank you for ...'
puts 

#method calls 
ask 'Do you like eating tacos?'                #ignore this return value
ask 'Do you like eating burritos?'             #and this one
wets_bed = ask 'Do you wet the bed?'
ask 'Do you like eating chimichangas?'
ask 'Do you like eating sopapillas?'
puts 'Just a few more questions...'
ask 'Do you like drinking horchata?'           #we can ask this because we ignore it
ask 'Do you like eating flautas?'			   #flexible, added new questions
puts 
puts 'DEBRIEFING:'
puts 'Thank you for...'
puts 
puts wets_bed

#Improved Ask Method.
#Clean up by removing answer variable

def ask question 
	while true
		puts question
		reply = gets.chomp.downcase

		if (reply == 'yes' || reply == 'no')
			if reply == 'yes'
				return true 			       #I like to state return values explictly
			else
				return false
			end
			break
		else
			puts 'Please answer "yes" or "no"'
		end
	end
end

puts 'Hello, and thank you for ...'
puts 

#method calls 
ask 'Do you like eating tacos?'                #ignore this return value
ask 'Do you like eating burritos?'             #and this one
wets_bed = ask 'Do you wet the bed?'
ask 'Do you like eating chimichangas?'
ask 'Do you like eating sopapillas?'
puts 'Just a few more questions...'
ask 'Do you like drinking horchata?'           #we can ask this because we ignore it
ask 'Do you like eating flautas?'			   #flexible, added new questions
puts 
puts 'DEBRIEFING:'
puts 'Thank you for...'
puts 
puts wets_bed

