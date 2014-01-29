@sum = 0

def is_amicable(n)
  factors = []
  (1..(n/2)).each do |x|
    factors << x if n % x == 0
  end
  # p factors
  pair = factors.reduce(0, :+)
  # p pair
  if pair != n
    @sum += n if pair_amicable?(pair, n)
  end
end

def pair_amicable?(m, n)
  factors = []
  (1..(m/2)).each do |x|
    factors << x if m % x == 0
  end
  p factors
  return true if factors.reduce(:+) == n
end

10000.times do |i|
  is_amicable(i + 1)
end

p @sum