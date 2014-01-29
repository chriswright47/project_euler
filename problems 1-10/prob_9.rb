# there is one pythagorean triple such that a + b + c = 1000
# find the product abc for this triple

# thoughts: 
# c is less than 500 (as are a and b) 
# maybe compose a large array of three-element arrays that each contain a valid triple?

a = 1
while a < 500
	b = 1
	while b < 500
		if (a**2 + b**2 == (1000 - a - b)**2)
			ans = "#{a}, #{b}"
		end 
		b += 1
	end
	a += 1
end

puts ans

puts (375**2 + 200**2)**0.5

puts "product is 375 * 200 * 425 = #{375 * 200 * 425}"
