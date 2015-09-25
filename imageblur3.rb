class Image
	attr_accessor :image

	def initialize(array)
		@image = array
	end

	#|x1 - x2| + |y1 - y2|  without negatives
	def manhattan_distance(x1, y1, row_index, column_index)
		(x1 - row_index).abs + (y1 - column_index).abs
	end

	def blur(distance)
		one = find_ones
		@image.each_with_index do |row, row_index|
			row.each_with_index do |pixel, column_index|
				one.each do |x1, y1|
					man_distance = manhattan_distance(x1, y1, row_index, column_index)
					if man_distance <= distance
						@image[row_index][column_index] = 1
					end
				end
			end
		end
	end

	def find_ones
		one = []
		@image.each_with_index do |row, a|
			row.each_with_index do |pixel, b|
				if pixel == 1
					one << [a, b]				
				end
			end
		end
		one
	end

	def output_image
		@image.each_index do |i|
			subarray = image[i]
			puts subarray.join
		end 
	end
end

image = Image.new([
	[0, 0, 0, 0, 0, 0, 0, 0, 0, 0],
	[0, 0, 0, 0, 0, 0, 0, 0, 0, 0],
	[0, 0, 0, 0, 0, 0, 0, 0, 0, 0],
	[0, 0, 0, 0, 0, 0, 0, 0, 0, 0],
	[0, 0, 1, 0, 0, 0, 0, 0, 0, 0],
	[0, 0, 0, 0, 0, 0, 0, 0, 0, 0],
	[0, 0, 0, 0, 0, 0, 0, 0, 0, 0],
	[0, 0, 0, 0, 0, 1, 0, 0, 0, 0],
	[0, 0, 0, 0, 0, 0, 0, 0, 0, 0],
])


image.blur(2)
image.output_image
