class Image
	attr_accessor :image

	def initialize(image)
		@image = image
	end

	def blur(distance)
		@distance = distance

		copy = []
		copy = Marshal.load( Marshal.dump(image) )
		
		image.each_with_index do |row, row_index|
			# row index is y access location, grows down positively
			row.each_with_index do |pixel, column_index|
				# column index is x access location, grows right positively
				if pixel == 1
					while row_index < image.length-1 
						copy[row_index][column_index]..copy[row_index+@distance][column_index] = 1 
					end
					# while row_index > 0
					# 	copy[row_index..(row_index - @distance)][column_index] = 1 
					# end
					# while column_index > row.length-1
					# 	copy[row_index][column_index..(column_index + @distance)] = 1 
					# end
					# while column_index > 0
					# 	copy[row_index][column_index..(column_index - @distance)] = 1 
					# end
				end
			end
		end

		
		
		copy.each_index do |i|
			subarray = copy[i]
			puts subarray.join
		end 
	end
end

image = Image.new([
  [0, 0, 0, 0, 0, 0],
  [0, 1, 0, 0, 0, 0],
  [0, 0, 1, 0, 0, 0],
  [0, 0, 0, 0, 0, 0]
])
image.blur(3)


010100
111100
111100
010100
