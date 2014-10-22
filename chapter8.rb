#Learn to Program 2nd edition 
#by Chris Pine
#Chapter 8- Arrays


#8.1- Basics
#Arrays are a collection of elements
#arrays can exist within each other.

#arrays work like elements in a set
#starts from 0 up to x-1 elements
#can call array like variable_name[x], 
#with x being any number between 0 thru x-1

#example set of elements in an array
#being printed out in a set.
names = ['Ada', 'Linus', 'Woz']

puts names
puts			# space
puts names[0]
puts names[1]
puts names[2]
puts names[3]   #This is out of range, thus x-1 (since we start at 0 not 1)
				#returns nil aka nothing, or not any other object

#array assignment

other_peeps = []

other_peeps[3] = "Jigga-man"
other_peeps[0] = "Macklemore"
other_peeps[1] = "Seedee"
other_peeps[0] = "beebee Ah-ha"

puts other_peeps

#other_peeps[2] returns nil because nothing was assinged to it.

#8.2 The Method each
#each method allows us to do something, anything to each object in 
#the array. They are like loops.

#cycles thru array and applies some action to each element/object
#this means for EACH object in languages, point to the variable
#lang to the object, and then DO everything I tell you to,
#in between the DO and END aka the Bloc, until you come to an END.

languages = ['English', 'Norwegian', 'Ruby']

languages.each do |lang|
	puts 'I love ' + lang + '!'
	puts 'Don\'t you?'
end

puts 'And let\'s hear it for Java!'
puts '<crickets chirp in the distance>'

#the |lang| is the variable that each will use to point to the objects
#in the array, instead of using languages[0] thru languages[x].

#the pipe characters | |, don't do anything to lang, they just let
#each know which variables to use to feed the objects into the array.
#think of the |lang| as a funnel to pour the each objects into the bloc
#then spit out something new.

#each is like a loop except it is a method. 
#While, end, do, if, elsif, else, are not methods, but keywords
#iterators- methods that act like loops.





