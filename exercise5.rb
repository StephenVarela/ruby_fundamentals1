## Exercise 5 user commands

distance = 0 # keeps track of distance from home
energy = 100 # 100 is full energy
user_action = "" # place holder variable to check user action

puts "Exercise Game! Valid commands include the following"
puts "run/walk/rest/go home"
puts "try not to die!"

loop do

  puts "Would you like to walk or run?"
  user_action = gets.chomp.upcase

  if user_action == "WALK"
    if energy < 100
      energy += 1
    end
    distance += 1
  elsif user_action == "RUN"
    if energy <= 0
      puts "You Cant run right now! Energy: #{energy}"
    else
      energy -= 10
      distance += 5
    end
  elsif user_action == "REST"
    energy += 5
    puts "You recover a bit!"
  elsif user_action == "GO HOME"
    distance = 0
    puts "You are home! Goodbye"
    break
  else
    puts "Error! Invalid command"
  end

  if energy < 0
    puts "Oh dear... you died"
    break
  end

  puts "Distance from home is #{distance}Km."
  puts "Your Energy is at #{energy}\%."

  if energy < 20
    puts "Warning your energy is low! Take a break"
  end

end
