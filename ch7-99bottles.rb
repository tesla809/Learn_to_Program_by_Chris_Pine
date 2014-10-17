#Chapter 7 
#section 4
#A Few Things to Try

#“99 Bottles of Beer on the Wall.” 
#Write a program that prints out the lyrics 
#to that beloved classic, “99 Bottles of Beer on the Wall.”
puts 'Lets sing a song!'
counter = 99
while counter <= 99 && counter != 0
    puts counter.to_s + ' bottles of beer on the wall, ' + counter.to_s + ' bottles of beer.'
    puts 'Take one down, pass it around, ' + counter.to_s + ' bottles of beer on the wall...'
    
    counter = counter - 1

    if counter == 0
		puts counter.to_s + ' bottles of beer, on the wall!'
		puts 'Hey, lets go to the store and buy some more!'
		break
	end
end