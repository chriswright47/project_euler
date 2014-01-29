# given an n x n lattice of points, find the number of most efficient paths 
# from the top left to the bottom right (i.e. how many paths of length 2n)
# (this specific problem asks to solve for a 20 x 20 lattice)


# for an n x n lattice, you simply need to calculate 2n choose n
# thus for 20 x 20 lattice, the answer is simply 40 choose 20

def factorial(n)
	return 1 if n == 1
	return n * factorial(n - 1)
end	

def n_choose_k(n, k)
	factorial(n) / (factorial(k) * factorial(n - k))
end

puts n_choose_k(40, 20)
