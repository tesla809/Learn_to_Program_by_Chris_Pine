#chapter 8
#Building and sorting an array
#simple, intuitive, clean and straight to the point
word = 'placeholder'
words = []

puts 'Arrays- Building and Sorting Program!'
puts 
puts 'Enter as many words as you like.'
puts 'I will then sort them in alphabetical order'
puts 'To finish, type !'

while word != '!'
    word = gets.chomp
    words = words.push word
end

#space 
puts 
puts
puts

#eliminates last object in array so that it doesn't show up
words.pop

puts 'Your words originally:'
puts words

puts

puts 'Your words in alphabetical order:'
puts words.sort