# Some Ruby code

def sum(a)
	if a.empty?
		return 0
	end
	first, *rest = a
	if first.kind_of?(Array)
		return first.length + sum(rest)
	else 
		return 1+ sum(rest) 
	end
	
		
end

def remove_odd(b)
	
	if b.empty?
		return []
	end
	first, *rest = b
	if first.kind_of?(Array)
		return [].concat([remove_odd(first)]) + remove_odd(rest)
	else
		if first.even?
			return [].concat([first]) + remove_odd(rest)
		else
			return remove_odd(rest)
		end
	end
end

def digits(c)
	str = c.to_s
	arr = str.split("")
	return arr.length
end

def ith_digit(d,ind)
	str = d.to_s
	arr = str.split("")
	return arr[arr.length-ind-1]
end

def occurences(e, num)
	str = e.to_s
	arr = str.split("")
	def counter(arr,num)
		if arr.empty?
			return 0
		end
		first, *rest = arr
		if first.to_i.equal?(num)
			return 1 + counter(rest,num)
		else
			return counter(rest,num)
		end
	end
	return counter(arr,num)
end

def digital_sum(f)
	str = f.to_s
	arr = str.split("")
	def sums(arr)
		if arr.empty?
			return 0
		end
		first, *rest = arr
		return sums(rest).to_i + first.to_i
	end
	return sums(arr)
end

def digital_root(g)
	str = g.to_s
	arr = str.split("")
	
	def sums(arr)
		if arr.empty?
			return 0
		end
		first, *rest = arr
		return sums(rest).to_i + first.to_i
	end
	
	def checkit(arr)
		y = sums(arr)
	if y < 10
		return y
	else
		str1 = y.to_s
		arr1 = str1.split("")
		return checkit(arr1)
	end
	end
	return checkit(arr)
end

###########################
puts "Sum of values in [1,2,3,[4,5,6],7,8,9]: #{sum([1,2,3,[4,5,6],7,8,9])}"
puts "Odds removed from [1,2,3,[4,5,6],7,8,9]: #{remove_odd([1,2,3,[4,5,6],7,8,9])}"
puts "Length of int 123456789: #{digits(123456789)}"
puts "4th digit in 9827365: #{ith_digit(9827365,4)}"
puts "Occurences of 2 in 1222223: #{occurences(1222223,2)}"
puts "Sum of 999999999: #{digital_sum(999999999)}"
puts "Digital root of 99999999: #{digital_root(9999999999)}"


/*OUTPUT
Sum of values in [1,2,3,[4,5,6],7,8,9]: 9
Odds removed from [1,2,3,[4,5,6],7,8,9]: [2, [4, 6], 8]
Length of int 123456789: 9
4th digit in 9827365: 2
Occurences of 2 in 1222223: 5
Sum of 999999999: 81
Digital root of 99999999: 9
*/
