#Learn to Program 2nd edition 
#by Chris Pine
#chapter 5- Mixing it up

#5.1 Conversions

#The below is an illustration of the fixnum error 
#as a result of trying to add integers/floats with strings
#the computer won't know if the person wants to 
#add two strings and have 25 or
#add two numbers and have 7.
#var1 = 2
#var2 = '5'
#puts var1 + var2

#to get around this we use conversions
#strings - .to_s
#integers - .to_i
#floats - .to_f
#note that floats are numbers with decimals (ie 9.5, 98.9999, 0.22521)

#outputs 25 since we converted the number 2 into a string with
#.to_s
var1 = 2
var '5'
puts var1.to_s + var2

#outputs 7 since we converted the number 2 into a integer with
#.to_i
puts var1 + var2.to_i

#note that after converting var1 into an string, it still will
#always point to the number 2 not string '2' for the life
#of the entire program
#we would have to explicitly reset it to '2' to change it to that string 

puts '15'.to_f                #converts integer to float
puts '99.999'.to_f            #converts float to a float
puts '99.999'.to_i            #converts float to an integer
puts 'stringy'.to_s				#converts string to string
puts 3.to_i 					#converts integer to integer
puts ''
puts '5 is my favorite number!'.to_i    #converts 5 into integer
										#ignores the rest, because
										#computer does not know what to
										#do with it
										#so it just outputs 0

puts "Who asked you about 5 or whatsoever".to_i     #computer doesn't know
													#what to do with the 
													#beginning so it ignores
													#it and the rest of the
													#sentence, including the
													#string '5'
													#so it outputs 0.0

#5.2 Another Look at puts
#printed out and look the same.
#puts method is actually put s, and s standing for string
#puts secretly uses the .to_s method to convert everything
#into a string to output it on the screen.
#this will become relevant later when we try to use puts
#on a pictures or music file. 
puts 20
puts 20.to_s
puts '20'


#5.3 The gets Method
#puts outputs objects on to a screen by converting them into strings
#gets gets strings from the keyboard.

#puts out what it gets from user
#repeats what ever you say
puts gets



#5.4 Did It Work?
#Went back to peruse the first chapter



#5.5 The chomp Method
#Now we can make interactive programs
#the problem here is that gets takes both what you typed in and
# the ENTER you pressed, so it messes up the program
puts 'Hello there, and what\'s your name?'
name = gets
puts 'Your name is ' + name + '? What a lovely name!'
puts 'Please to meet you,' + name + '.   :)'

#use gets.chomp instead!
#chomp takes in the keyboard input and chomps the ENTER off
puts 'Hello there, and what\'s your name?'
name = gets.chomp
puts 'Your name is ' + name + '? What a lovely name!'
puts 'Please to meet you,' + name + '.   :)'


#5.6 A Few Things to Try
#Full name greeting. 
#Write a program that asks for a person’s first name, 
#then middle, and then last. 
#Finally, it should greet the person using their full name.
puts 'Hello unidentifed person! What\'s your first name?'
puts 'If you don\'t mind me being nosey'
first_name = gets.chomp
puts 'Great, thanks ' + first_name + '.'
puts 'What is your middle name? If you don\'t have one just hit ENTER'
middle_name = gets.chomp
puts 'Finally since I\'m so nosey, what is your last name?'
last_name = gets.chomp
puts 'Thank you ' + first_name + ' ' + middle_name + ' ' + last_name +'!'
puts 'I will keep this in my secret intelligence file, I mean, "log book".'


#Bigger, better favorite number. 
#Write a program that asks for a per- son’s favorite number. 
#Have your program add 1 to the number, 
#and then suggest the result as a bigger and better favorite number. 
#(Do be tactful about it, though.)
puts 'What is your favorite number?'
favorite_number = gets.chomp
puts 'Aaa ' + favorite_number + ' is a mighty good number'
new_favorite_number = favorite_number + 1
puts 'Might I suggest the number ' + new_favorite_number + 'as a better alternative?'


#5.7 Mind Your Variables

