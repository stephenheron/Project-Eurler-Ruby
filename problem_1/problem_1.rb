require("../timer/timer.rb")

time do 
  sum = 0
  (1..999).each do |n|
    if n % 3  == 0 or n % 5 == 0 
      sum += n
    end
  end
  puts "The sum of all the multiples of 3 or 5 below 1000 is: #{sum}"
end


