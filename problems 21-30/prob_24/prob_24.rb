# what is the millionth lexicographic (sorted) permutaion of the
# digits 0..9 ?

def factorial(n)
  n <= 1 ? 1 : n * factorial(n - 1)
end

digits = ('0'..'9').to_a
count = 0
# this comes from the number of permutations that start with 0
result = ''

10.times do
  i = -1
  next_count = count
  while next_count < 1000000
    count = next_count
    next_count += factorial(digits.length - 1)
    i += 1
  end
  p count
  result << digits.delete_at(i)
end

p result