require 'csv'

names = []
CSV.foreach('ruby_test.txt') do |row|
  row.each do |name|
    names << name
  end
end

names.sort!

letters = ("A".."Z").to_a

scores = names.map do |name|
  sum = 0
  arr = name.split('')
  arr.each { |x| sum += letters.index(x) + 1 }
  sum
  place = names.index(name) + 1
  sum * place
end

total = scores.reduce(:+)
p total
