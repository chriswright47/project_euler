# calculate the number of letters that would be used if all numbers
# from 1 to 1000 (inclusive) were written out in English
# e.g. 115 uses 20 letters to write "one hundred and fifteen"

# approach:	create a method that convers each number from numeral to English
# create an array of all number from 1 to 1000 and then count the number of characters

# this will only work on number up to 1000, as that is what the problem calls for
# this is a brute force solution and I'm sure it could be refactored to be more elegant
# but it worked so I am moving on
def int_to_eng(num)
	str = ''
	return 'onethousand' if num == 1000
	huns = num / 100
	num = num % 100
	case huns
		when 9 then str << 'ninehundred'; (str << 'and' if num != 0)
		when 8 then str << 'eighthundred'; (str << 'and' if num != 0)
		when 7 then str << 'sevenhundred'; (str << 'and' if num != 0)
		when 6 then str << 'sixhundred'; (str << 'and' if num != 0)
		when 5 then str << 'fivehundred'; (str << 'and' if num != 0)
		when 4 then str << 'fourhundred'; (str << 'and' if num != 0)
		when 3 then str << 'threehundred'; (str << 'and' if num != 0)
		when 2 then str << 'twohundred'; (str << 'and' if num != 0)
		when 1 then str << 'onehundred'; (str << 'and' if num != 0)
		else
	end
	tens = num / 10
	num = num % 10
	case tens
		when 9 then str << 'ninety'
		when 8 then str << 'eighty'
		when 7 then str << 'seventy'
		when 6 then str << 'sixty'
		when 5 then str << 'fifty'
		when 4 then str << 'forty'
		when 3 then str << 'thirty'
		when 2 then str << 'twenty'
		when 1
			case num
				when 9 then str << 'nineteen'
				when 8 then str << 'eighteen'
				when 7 then str << 'seventeen'
				when 6 then str << 'sixteen'
				when 5 then str << 'fifteen'
				when 4 then str << 'fourteen'
				when 3 then str << 'thirteen'
				when 2 then str << 'twelve'
				when 1 then str << 'eleven'
				else str << 'ten'
			end
			return str
		else
	end
	ones = num
	case ones
		when 9 then str << 'nine'
		when 8 then str << 'eight'
		when 7 then str << 'seven'
		when 6 then str << 'six'
		when 5 then str << 'five'
		when 4 then str << 'four'
		when 3 then str << 'three'
		when 2 then str << 'two'
		when 1 then str << 'one'
	end
	
	return str
end




num_arr = (1..1000).to_a.map! {|x| int_to_eng(x)}
count_arr = num_arr.map {|n| n.length}
puts count_arr.inject(:+)


