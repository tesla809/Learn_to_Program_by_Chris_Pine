puts "The Leap Year Program"
puts ""
puts "What is the starting year?"
startYear = gets.to_i
puts "What is the ending year?"

#checks if valid entry
#also gets end year while at it.
while (endYear = gets.to_i) < startYear
    puts "Your end year must be LATER than your start year. Please re-submit:"
end

#simple, clear, concise while loop conditional
#no need for a counter
while startYear < endYear
	#the insight here is in using a double while loop
	#no need for if statements.
	#also the coditional logic is clear.
	#if divisable by 4, but not by 100
	#or divisable by 100 and 400
    while ((startYear % 4 == 0 and startYear % 100 != 0) or (startYear % 100 == 0 and startYear % 400 == 0))
        puts startYear.to_s
        #simple increment
        startYear = startYear + 1       
    end
    startYear = startYear + 1
end