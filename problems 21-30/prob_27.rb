def is_prime?(n)
  return false if n < 2
  (2..n/2).each do |x|
    return false if n % x == 0
  end
  true
end

max = a = b = 0
(-999..999).each do |x|
  (-999..999).each do |y|
    i = 0
    while is_prime?(i**2 + x * i + y)
      i += 1
    end
    if i > max
      max, a, b = i, x, y
    end
  end
end

p "max: #{max}, a: #{a}, b: #{b}"

