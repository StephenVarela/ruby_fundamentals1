## Exercise 4
puts "Please Enter a Number"
user_number = gets.chomp.to_i

if(user_number >= 100)
  puts "Thats a big number!"
else
  puts "Why not dream bigger?"
end

## Part 2 identifying difference in age
puts "Tell me yo age foo!"
user_age = gets.chomp.to_i

if(user_age > 105)
  puts "Im not sure i believe you!"
elsif(user_age > 25)
  puts "you are #{user_age - 25} years older"
elsif(user_age == 25)
  puts "We are the same age!"
elsif(user_age < 25 && user_age > 0)
  puts "I am #{25 - user_age} years older"
else
  puts "Oops Something is wrong"
end

## part 3 Name check
my_name = "Stephen".upcase
puts "Tell me yo name foo!"
user_name = gets.chomp.upcase

if(my_name == user_name)
  puts "we have the same name"
else
  puts "we do NOT have the same name"
end

## part4 checking name length
puts "Tell me your name again"
user_name = gets.chomp.upcase
if(user_name.length > 10)
  puts "hi #{user_name}"
elsif(user_name.length < 10)
  puts "hello #{user_name}"
else
  puts "hey #{user_name}"
end

# Part 5 Secret number
puts "pick a number from 1 to 10"
secret_number = 7
user_guess = gets.chomp.to_i

if(secret_number == user_guess)
  puts "you win!"
elsif((user_guess == secret_number) + 1 || (user_guess == secret_number) - 1)
  puts "So close!"
else
  puts "Try again"
end
