# problem 4: Find the largest palindrome made from the product of two 3-digit numbers

num = 1000
i = 1
pal_arr = []
while i < num
	j = 1
	while j < num
		pal_arr << i * j if ((i * j).to_s == (i * j).to_s.reverse)
		j += 1
	end
	i += 1
end

puts pal_arr.max