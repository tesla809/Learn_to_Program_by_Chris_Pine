#Programs- chapter 2
puts 1+2
puts 1.0 + 2.0
puts 5.0 - 8.0
puts 9 / 2

puts 5 * (12-8) + -15
puts 98 + (59872 / (13*8)) * -51

#time program
#Write a program that tells you the following:
#Hours in a year. How many hours are in a year?
#Minutes in a decade. How many minutes are in a decade?

#hours in year sub program
hours_in_year = 365 * 24
puts "There are " + hours_in_year.to_s + " hours in a year"

minutes_in_decade = (hours_in_year * 60) * 10
puts "there are " + minutes_in_decade.to_s + " minutes in a decade"

#A FEW THINGS TO TRY
#Your age in seconds. How many seconds old are you? 
#(I’m not going to check your answer, so be as accurate—or 
#not—as you want.)

my_Age = 28
age_in_Seconds = ((1 * hours_in_year) * 60) * 60
my_Age_in_Seconds = 28 * age_in_Seconds
puts "I am " + my_Age_in_Seconds.to_s + " seconds old." 
#to.s converts integers into strings to enable concatenation aka
#combining strings (lines of text) on code output.


#Here’s a tougher question:
#Our dear author’s age. 
#If I am 1,025 million seconds old (which I am, 
#though I was in the 800 millions when I started this book), 
#how old am I?

chris_pine_age_in_seconds = 1025 * 1000000
chris_pine_age = chris_pine_age_in_seconds/age_in_Seconds
puts "Chris Pine is " + chris_pine_age.to_s + " years old."
