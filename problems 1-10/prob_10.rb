# find the sum of all primes below two million
require 'prime'

def sum_of_primes(max)
	sum = 0
	Prime.each(max) do |prime|
		sum += prime		
	end
	return sum
end

puts sum_of_primes(2000000)