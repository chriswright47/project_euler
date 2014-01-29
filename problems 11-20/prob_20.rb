def factorial(n)
  if n <= 1
    return 1
  else
    return n * factorial(n-1)
  end
end

x = factorial(100)

num_arr = x.to_s.split('').map {|x| x.to_i }
p num_arr.reduce(:+)