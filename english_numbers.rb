def english_number(num)
	if num < 0
		return "Please enter a number that isn\'t negative."
	end
	if num == 0
		return "zero"
	end

	num_string = ""

	ones_place = ["one", "two", "three", "four", "five", "six", "seven", "eight", "nine"]
	tens_place = ["ten", "twenty", "thirty", "forty", "fifty", "sixty", "seventy", "eighty", "ninety"]
	teens      = ["eleven", "twelve", "thirteen", "fourteen", "fifteen", "sixteen", "seventeen", "eighteen", "nineteen"]

	left  = num
	write = left/100
	left  = left - write*100

	if write > 0
		hundreds   = english_number(write)
		num_string = num_string + hundreds + " hundred"
		if left > 0
			num_string += " "
		end
	end

	write = left/10
	left  = left - write*10

	if write > 0
		if ((write == 1) and (left > 0))
			num_string += teens[left - 1]
			left = 0
		else
			num_string += tens_place[write - 1]
		end
		if left > 0
			num_string += "-"
		end
	end

	write = left
	left  = 0

	if write > 0
		num_string += ones_place[write - 1]
	end
	num_string
end

puts english_number(0)
puts english_number(122)
puts english_number(743)
puts english_number(23)
puts english_number(15)

