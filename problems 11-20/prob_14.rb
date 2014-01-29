# this is about finding the number under one million that starts the longest 
# Collatz chain
# for even numbers n: n -> n / 2
# for odd numbers  n: n -> 3n + 1
# it is believed (though not proven) that all numbers will eventually end up at one

def collatz_chain(n)
	i = 1
	while n > 1 
		if n % 2 == 0
			n = n / 2
		else 
			n = (3 * n) + 1
		end
		i += 1
	end
	puts i
	return i
end

arr = (1...1000000).to_a
arr.map! {|n| collatz_chain(n)}
puts ""
puts arr.index(arr.max) # => index is 837798 so number is 837799