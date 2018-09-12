## Exercise 5 user commands

distance = 0 # keeps track of distance from home
energy = 100 # 100 is full energy
user_action = "" # place holder variable to check user action
personal_best = 0

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
    if energy + 5 < 100
      energy += 5
      puts "You recover a bit!"
    elsif energy >= 100
      puts "you are already at full energy! get moving!"
    end
  elsif user_action == "GO HOME"
    if(distance >= personal_best)
      puts "Congratulations new personal best! #{distance}Km"
      personal_best = distance
    else
      puts "Good Job you ran: #{distance}Km and your personal best was #{personal_best}Km"
    end
    distance = 0
    energy = 100
    puts "You are home! Would you like to exercise again?"

    exercise_again = ""
    possible_commands = ['YES', 'NO']
    until possible_commands.include?(exercise_again)
      exercise_again = gets.chomp.upcase
      if exercise_again != "YES" && exercise_again != "NO"
        puts "Invalid command: type either 'yes' or 'no'"
      end
    end
    if(exercise_again == "NO")
      break
    end

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
puts("Thank you for playing!")
