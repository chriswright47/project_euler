# find the sum of all numbers divisible by 3 or 5 un 1000

sum = 0;
(1...1000).to_a.each do |x| 
	if x % 3 == 0 || x % 5 == 0
		sum += x
	end
end
puts sum