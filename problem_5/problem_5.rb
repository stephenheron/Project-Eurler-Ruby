count = 1
max = 20

loop do
  attempts = 0
  (1..max).each do |n|
    attempts += 1 if count % n == 0 
  end
  break if attempts == max
  count += 1 
end

puts count
