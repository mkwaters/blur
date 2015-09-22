# ------Attempt 1

# def unique(array)
# 	array.each_with_index {|i, index|
# 		next_number = self.[index+1]
# 		i.each do |i|
# 			next_number.delete_if == i
# 			a.push(i)
# 		end
# 	}
# 	puts array
# end

# array = [1, 5, 2, 0, 2, -3, 1, 10]
# puts unique(array)


# ------Attempt 2

# arr = ['x', 'o', 'x', '.', '.', 'o', 'x']
# arr.each_index.delete.if{|i| arr[i] == self}
# def simple
# 	arr = ['x', 'o', 'x', '.', '.', 'o', 'x']
# 	arr.each_index.delete_if{|i| arr[i] == self}
# end


# ------Attempt 3

# def unique(integers)
# 	a = []
# 	integers.each do |i|
# 		if integers.count(i) > 1
# 			i.delete
# 		end
# 	end
# 	puts integers
# end

# integers = [1, 5, 2, 0, 2, -3, 1, 10]
# puts unique(integers)


# ------Attempt 4

# def unique(integers)
# 	a = []
# 	b = []
# 	integers.each do |i|
# 	  if integers.count(i) == 1
# 	  	a.push(i).join
# 	  else
# 	  	b.push(i)
# 	  end
# 	end
# 	puts a
# end

# ------Attempt 5

# def unique(integers)
# 	a = []
# 	integers.each_with_index {|i, index|
# 		if i == [index+1]

# 		end
# 		a.push(i)
# 	}
# 	puts a
# end

# integers = [1, 5, 2, 0, 2, -3, 1, 10]
# puts unique(integers)



# ------Attempt 6

# delete = @hash[date].index {|log_item| log_item.name == name}
# @hash[date].delete_at(delete)

def unique(integers)
	a = []
	integers.each do |i|
		if a.include?(i)
			next
		else
			a.push(i)
		end	
	end
	puts a
end

integers = [1, 5, 2, 0, 2, -3, 1, 10]
unique(integers)




