# considering Fibonacci numbers whose values do not exceed four million, find the sum
# of all the even-valued terms.

def build_fibo_arr (max)
	i = 1; j = 1; k = 1
	fibo_array = []
	while k <= max
		fibo_array << k
		k = i + j
		i = j
		j = k
	end
	return fibo_array
end

fibo_arr = build_fibo_arr(4000000)
fibo_arr.select! { |x| x % 2 == 0 }
puts fibo_arr.inject(:+)