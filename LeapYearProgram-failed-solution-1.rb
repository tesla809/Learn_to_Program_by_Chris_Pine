#ch 7
#leap year
#failed attempts
#that were not simple
#best solutions are simple and straight forward

#1st failed attempt
#I learnt 3 lessons here
#1st, the KISS principle- Keep It Simple Stupid (or Student)
#simpler programs are more intuative and usally more efficent
#2nd, Don't refactor unless you have the program working
#get a working draft, then refactor to make it concise.
#3rd, mistakes suck, but the only way to get good is to make 
#a bunch of them and try not to repeat the same ones over. 

puts "Leap Year Program"
puts ' '
puts "Hey, pick a starting year and an ending year"
puts "and I will output all the leap years in between"

puts "Enter the starting year"			#prompt starting year
startYr = gets.chomp.to_i 				#put into variable

puts "Enter ending year"				#prompt ending year 
endYr = gets.chomp.to_i					#put into variable

#Below, trying to limit amount of times the loop goes here
#this code isn't necessary because we could just limit
#the length by start < end. 
#also this is not intuative or simple
range = (endYr - startYr)/4

#no need to assign again
leap = startYr

#a weird way of setting the while loop
#in retrospect, it is not intuitive and not simple
#strive to be like Feynman and pride yourself in 
#thinking more simply than others. 
#KISS principle- Keep it simple stupid.
#-1 was to include end year
#duh, why not just say: start < end

while !(range == -1) 
	#again not simple enough. In retrospect, I was trying to
	#refactor the code into a more condensed form, before 
	#I actually had it working. 
    if leap % 4 == 0 && (!(leap % 100 == 0) || leap % 400 == 0)
		puts leap.to_s
		#I was adding 4 instead of just adding 1 year and checking for it
		#That makes an assumption that the 1st year will be a leap year.
		#say i started with 1935... then it will cycle thru and
		#miss a bunch of leap years
		#again keep it simple, x = x + 1 is better
		x = x + 4
		#no need for this when you have a properly configured
		#and SIMPLE while loop conditional
		range = range - 1	
	else 
		#no need for this. These two lines of code could eliminated
		#with the much simpler approach above.
		x = x + 4
		range = range - 1
		#unnecessary
		break
	end
end
