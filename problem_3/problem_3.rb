def time
  start = Time.now
  yield
  puts "This code took #{Time.now - start} seconds to run"
end

time do
  input = 600851475143
  largest = 0

  (1..input/2).each do |n|
    largest = n if largest % n == 0
  end

  puts largest
end
