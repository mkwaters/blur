class Image
	attr_accessor :image

	def initialize(image)
		@image = image
	end

	def output_image

		copy = Marshal.load( Marshal.dump(image) )
		
		image.each_with_index do |row, row_index|
			# call each subarray index and item
			row.each_with_index do |pixel, column_index|
				if pixel == 1
					if row_index < image.length-1
						copy[row_index + 1][column_index] = 1 
					end
					if row_index > 0
						copy[row_index - 1][column_index] = 1 
					end
					if column_index < row.length-1
						copy[row_index][column_index + 1] = 1 
					end
					if column_index > 0
						copy[row_index][column_index - 1] = 1 
					end
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
  [0, 0, 0, 0],
  [0, 1, 0, 0],
  [0, 0, 0, 1],
  [0, 0, 0, 0]
])
image.output_image

