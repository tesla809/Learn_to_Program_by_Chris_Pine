#Learn to Program 2nd edition 
#by Chris Pine
#Chapter 9- Writing Your Methods

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