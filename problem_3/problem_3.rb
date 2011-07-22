require("../timer/timer.rb")

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

time do 
  input = 600851475143
  primes = sieve(10000)
  largest = 0
  primes.each do |p|
    largest = p if input % p == 0
  end
  puts "The largest prime factor of #{input} is #{largest}"
end
