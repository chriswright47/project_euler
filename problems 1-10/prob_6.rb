# prob 6 is to find the difference between the sum of squares and the square of the sum.
# i.e. (1 + 2 + ... + n) ** 2  -  (1**2) + (2**2) + ... + (n**2) = ?

arr_1 = (1..100).to_a
sum = arr_1.inject(:+)
sq_of_sum = sum ** 2

arr_2 = (1..100).to_a
arr_2.map! {|x| x *= x}
sum_of_sqs = arr_2.inject(:+)

difference = sq_of_sum - sum_of_sqs
puts difference