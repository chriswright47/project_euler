# find the value of d within [1,1000) for which 1/d
# contains the longest recurring cycle in its decimal fraction
require 'bigdecimal'

decimals = (1..999).to_a.map { |x| BigDecimal.new('1.0').div(x, 500) }

# this has something to do with finding the longest repeating substring

def longest_recurring_cycle(string)
  i = string.length / 2
  while i > 0
    if cycle(string, i) && non_repeating(string, i)
      return i
    end
    i -= 1
  end
  return 0
end

def cycle(string, i)
  string[-i, i] == string[-2*i, i]
end

def non_repeating(string, i)
  longest_recurring_cycle(string[-i, i]) == 0
end

max = 0
n = 0
decimals.each do |x|
  string = x.to_s.split('')[0..-4]
  cycle = longest_recurring_cycle(string)
  if cycle > max
    max, n = cycle, x
    p string
  end
end

p max
p 1.0 / n