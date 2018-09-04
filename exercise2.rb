#calculating a good tip for 55$ Meal. Assume 20%
puts (55*1.2)

puts "2".to_i + 3 #should now print out 5 after converting string to integer

#The following sentence uses string interpolation
puts "The product of 45628 and 7839 is: #{45628*7839}"

#10<20 evaluates to true
#30<20 evaluates to false
#true && false evaluates to false
#10==11 evaluates to false
#!false evaluates to true
#false||true evaluates to true
puts ((10 < 20 && 30 < 20) || !(10 == 11))

#trying variables and boolean logic
my_number = 12;
puts(my_number>10) #should equal true
puts(my_number<10) #should output false

your_number = 1
puts(my_number==your_number) #should output false
puts(my_number!= your_number) #should output true
