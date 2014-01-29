def sum_diagonals(n)
  i = 2
  diagonals = [1]
  while i < n
    x = diagonals.last
    4.times { x += i; diagonals << x }
    i += 2
  end
  diagonals.reduce(:+)
end

p sum_diagonals(1001)
