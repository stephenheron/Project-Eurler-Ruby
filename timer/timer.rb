def time
  start = Time.now
  yield
  puts "This code took #{Time.now - start} seconds to run"
end

