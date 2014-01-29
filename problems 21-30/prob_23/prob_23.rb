# Find the sum of all the positive integers which cannot be written as the sum of two abundant numbers.

def is_abundant?(n)
  factors(n).reduce(0, :+) > n
end

def factors(n)
  (1..n/2).select {|x| n % x == 0}
end

p 'finding abundants'
@abundants = (1..28123).select {|n| is_abundant?(n)}
@sums = []
p 'finding all possible sums'
@abundants.permutation(2) { |p| @sums << p[0] + p[1] }
@abundants.each {|x| @sums << x + x }
# this works up to here, I have all the abundant numbers in the range
# of 1 to 28123, but not sure how to efficiently test whether
# or not a number can be written as the sum of two abundant numbers

def is_sum_of_abundants?(n)
  @sums.include?(n)
end

p 'calculating matches'
# matches are numbers which cannot be written as sum
matches = (1..28123).reject { |x| is_sum_of_abundants?(x) }
p 'adding matches'
p matches.reduce(:+)