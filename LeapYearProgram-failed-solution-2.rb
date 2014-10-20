#almost the correct solution
#It is way simpler, and mostly intuitive
#however, in sticking to the KISS principle
#can you spot the weird logic here?
#...line 22

#why does this work instead?
puts 'The Leap Year Calculator'
puts ' '
puts 'Enter the starting year.'
start_year = gets.chomp.to_i
puts 'Enter the ending year.'
end_year = gets.chomp.to_i

#almost the correct algorithm, but still 
#not really intuitive. Its CLEVER, but not SIMPLE....
#and it doesn't always work.
#probably the highest form of cleverness is simplest solution that works.
#doesn't output the first leap year
#if I pick 1933, it does not pick 1934 as leap year
#almost correct, but not quite 
leap_year = (start_year + start_year % 4).to_i

while leap_year <= end_year
  #using % 4 seemed not necessary, because below satisfies 
  #all conditions
  if !(leap_year % 100 == 0) || (leap_year % 400) == 0
    puts leap_year
  end
  leap_year = leap_year + 4
end