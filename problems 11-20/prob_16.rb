# calculate the sum of all the individual digits of the number 2**1000

num = 2 ** 1000

dig_arr = num.to_s.split("")
dig_arr.map! {|x| x. to_i}
sum = 0
dig_arr.each {|x| sum += x}
puts sum