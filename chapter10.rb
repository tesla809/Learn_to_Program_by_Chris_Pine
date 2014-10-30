#Learn to Program 2nd edition 
#by Chris Pine
#Chapter 10- There is Nothing New to Learn in Chapter 10


#10.1 Recursion 
#recursions are like loops in that they call themselves.
#they are methods that call themselves
#They are in a way better than loops because they can call themselves
#only some of the time.

def ask_recursively question
	puts question
	reply = gets.chomp.downcase

	if reply == 'yes'
		true
	elsif reply == 'no'
		false
	else
		puts 'Please answer "yes" or "no".'
		ask_recursively question # This is the magic line.
	end
end

ask_recursively 'Do you wet the bed?'

#so when do you use recursion and when do you use loops?
#loops- when doing the same thing over and over again
#recursion- when a small part of the problem resembles
#the whole problem.



