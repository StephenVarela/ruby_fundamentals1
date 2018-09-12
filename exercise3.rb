# this is exercise of 3

puts "What is your name?"
user_input = gets.chomp
puts "Hello #{user_input} Nice to Meet you!"
puts "How old are you?"
age = gets.chomp.to_i

# calculate year
year = 2018 - age
puts "You were born in #{year}"
