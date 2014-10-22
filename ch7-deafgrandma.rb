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
