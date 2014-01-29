# find the first triangle number to have over 500 divisors

def triangle_num(n)
	(n)*(n+1)/2
end

# using the √num instead of num saves a lot of time and we can then just 
# double the number of factors 
def divisors_of(num)
	(1..((num**0.5).to_i)).to_a.select{|n| num % n == 0}
end

i = 1
while true
	divisors = divisors_of(triangle_num(i))
	# puts triangle_num(i)
	# puts divisors.length
	if divisors.length > 249
		break
	end
	i += 1
end

puts triangle_num(i)
