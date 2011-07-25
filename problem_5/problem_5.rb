require("../timer/timer.rb")
time do
  count = 1
  max = 20

  loop do
    found = true
    (11..max).each do |n|
      found = false if count % n != 0 
    end
    break if found == true
    count += 1 
  end

  puts count
end
