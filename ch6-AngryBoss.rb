#Chapter 6- A Few Things to Try
#Angry Boss.
#Write an angry boss program that rudely asks what you want. 
#Whatever you answer, the angry boss should yell it back to you 
#and then fire you. 
#For example, if you type in I want a raise, 
#it should yell back like this:
#WHADDAYA MEAN "I WANT A RAISE"?!? YOU'RE FIRED!!￼

puts 'What do you want?'
request = gets.chomp
puts 'WHADDAYA MEAN "' + request + '"?!? YOU\'RE FIRED!!'