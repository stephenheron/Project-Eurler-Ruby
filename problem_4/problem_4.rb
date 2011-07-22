require("../timer/timer.rb")
time do
  largest = 0

  (100..999).each do |number_1| 
    (100..999).each do |number_2|
      number = number_1 * number_2
      if number.to_s == number.to_s.reverse
        largest = number if number > largest 
      end
    end
  end

  puts "The largest palindrome made the product of two 3-digit numbers is #{largest}"
end
