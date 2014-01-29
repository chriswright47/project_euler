=begin
You are given the following information, but you may prefer to do some research for yourself.

1 Jan 1900 was a Monday.
Thirty days has September,
April, June and November.
All the rest have thirty-one,
Saving February alone,
Which has twenty-eight, rain or shine.
And on leap years, twenty-nine.
A leap year occurs on any year evenly divisible by 4, but not on a
century unless it is divisible by 400.
How many Sundays fell on the first of the month
during the twentieth century (1 Jan 1901 to 31 Dec 2000)?
=end

@month_starts = []
# day_key = monday = 0, ..., sunday = 6
# in 1901, Jan 1 was on a tuesday, so year_start = 1
MONTH_LENGTHS = [31,28,31,30,31,30,31,31,30,31,30]
LY_LENGTHS = [31,29,31,30,31,30,31,31,30,31,30]


def calculate_month_starts(year, year_start)
  @month_starts << year_start
  if year % 4 == 0
    LY_LENGTHS.each do |length|
      year_start += length
      year_start %= 7
      @month_starts << year_start
    end
  else
    MONTH_LENGTHS.each do |length|
      year_start += length
      year_start %= 7
      @month_starts << year_start
    end
  end
  year_start += 31
  return year_start % 7
end


year_start = 1
100.times do |i|
  year_start = calculate_month_starts(i + 1, year_start)
end

sundays = @month_starts.select {|x| x == 6}
p "#{@month_starts}"
p "number of sundays: #{sundays.length}"




