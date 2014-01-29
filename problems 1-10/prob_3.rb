# What is the largest prime factor of the number 600851475143 ?
# the first method does not work; is the number too big? It works for smaller numbers.

num = 600851475143
require 'prime'

def prime_factors(int)
	factor_arr = []
	while int > 1
		Prime.each(int)	do |prime|
			if int % prime == 0
				factor_arr << prime
				int /= prime
			end
		end
	end
	
	return factor_arr
end

puts prime_factors(11234).inspect
#puts prime_factors(600851475143).last


def pf_2(int)
	return [] if int == 1
	factor = (2..int).find {|x| int % x == 0}
	[factor] + pf_2(int / factor)
end

puts pf_2(num).inspect
