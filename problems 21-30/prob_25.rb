def nth_fibonacci(n)
  n <= 2 ? 1 : nth_fibonacci(n-1) + nth_fibonacci(n-2)
end

n = 2
i = 1
j = 1
while j < 10**999
  i, j = j, i + j
  n += 1
end

p n
p j.to_s.length

