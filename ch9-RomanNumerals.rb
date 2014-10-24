#Learn to Program 2nd edition 
#by Chris Pine
#Chapter 9- Writing Your Methods

#Old School Roman Numerals
#make a old school real number to 
#roman numeral program
#so make 9 instead of IX
#make it VIIII

#I = 1
#V = 5
#X = 10
#L = 50
#C = 100
#D = 500
#M = 1000

puts 'Number to Old School Roman Numerals'
puts 'Please enter a non zero positive integer: '

number = gets.chomp
number = (number.to_i).abs   #sets any non integer into a 0

#refactor idea 1-
#refactor to have numeral definitions on top equal letter
#ie I = 'I' * integer
#then just put I in if statement. 
#combine in each successive assignment to make it 
#cleaner, more intuitive.

#refactor idea 2-
#eliminate rep. There is a pattern in each rule to  each number
#abstract it and add it into idea 1.
#can use a loop that runs thru the program and outputs the equation 
#in an iterative manner.

#refactor idea 3-

#conversion function
def numeral_To_Roman integer
	if integer < 5 									#I
		puts 'I' * integer

	elsif integer >= 5 && integer < 10				#V
		puts 'V' + 'I' * (integer % 5)

	elsif integer >= 10 && integer < 50				#X
		#uses integer division to round down ;)
		puts 'X' * (integer/10) + 'V' * ((integer % 10)/5) + 'I' * (integer % 5)

	elsif integer >= 50 && integer < 100 			#L
		puts 'L' * (integer/50) + 'X' * ((integer % 50)/10) + 'V' * ((integer % 10)/5) + 'I' * (integer % 5)
	
	elsif integer >= 100 && integer < 500			#C
		puts 'C' * (integer/100) + 'L' * (integer%100/50) + 'X' * ((integer % 50)/10) + 'V' * ((integer % 10)/5) + 'I' * (integer % 5)
	
	elsif integer >=500 && integer < 1000			#D
		puts 'D' * (integer/500) + 'C' * (integer%500/100) + 'L' * (integer%100/50) + 'X' * ((integer % 50)/10) + 'V' * ((integer % 10)/5) + 'I' * (integer % 5)

	elsif integer >= 1000 && integer < 9999			#M
		puts 'M' * (integer/1000) + 'D' * (integer%1000/500) + 'C' * (integer%500/100) + 'L' * (integer%100/50) + 'X' * ((integer % 50)/10) + 'V' * ((integer % 10)/5) + 'I' * (integer % 5)		
				
	else
		puts 'bacon'
	end
end

numeral_To_Roman number

#checks if non zero positive integer is inputted
while number == 0
	puts 'please enter a valid non zero integer'
	number = gets.chomp
	number = (number.to_i).abs
	numeral_To_Roman number
end




