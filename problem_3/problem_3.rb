def time
  start = Time.now
  yield
  puts "This code took #{Time.now - start} seconds to run"
end

def sieve(max)  
  primes = (2..max).to_a
  count = 0

  while count**2 <= max do
    prime = primes[count]
    primes.delete_if {|n| n % prime == 0 and n != prime}
    count += 1
  end

  return primes
end

puts sieve(30)

