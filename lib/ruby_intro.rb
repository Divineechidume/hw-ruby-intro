# When done, submit this entire file to the autograder.

# Part 1

def sum arr
	result = 0
	arr.each do |num|
		result += num
	end
	return result
  # YOUR CODE HERE
end

def max_2_sum arr
	max1 = 0
	max2 = 1
	if arr.length == 0
		return 0
	elsif arr.length < 2
		return arr[0]
	else
		if arr[0] < arr[1]
			max1 = 1
			max2 = 0
		end
		for i in 2 ... arr.length
			if arr[i] >= arr[max1]
				max2 = max1
				max1 = i
			elsif arr[i] > arr[max2] and arr[i] < arr[max1]
				max2 = i
			end
		end
		return arr[max1] + arr[max2]
	end
  # YOUR CODE HERE
end

def sum_to_n? arr, n
	temp = arr.dup
	for i in 0 ... arr.length
		temp.delete_at(i)
		if (temp.include? (n - arr[i]))
			return true
		end
		temp = arr.dup
	end
	return false
  # YOUR CODE HERE
end

# Part 2

def hello(name)
  # YOUR CODE HERE
end

def starts_with_consonant? s
  # YOUR CODE HERE
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
end

# Part 3

class BookInStock
	attr_reader :isbn, :price

	def initialize(isbn, price)
		if isbn == '' or price <= 0
			raise ArgumentError
		end
		@isbn = isbn
		@price = 0.00 + price
	end

	def isbn=(val)
		@isbn = val
	end

	def price=(val)
		@price = val
	end

	def price_as_string()
		if @price.to_s[-2] == "."
			return "$#{@price}0"
		end
		return "$#{@price}"
	end
# YOUR CODE HERE
end
