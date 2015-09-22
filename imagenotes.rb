#create 2d array image
image = [[0,0,0,0],[0,1,0,0],[0,0,0,0]]
 b = Marshal.load( Marshal.dump(image) )
        b.each_with_index do |row, row_index|
        row.each_with_index do |pixel, column_index|
            if b[row_index][column_index]>0
		   if column_index != image[row_index].length - 1
                image[row_index][column_index+1]=1
		   end

              image[row_index+1][column_index]=1
              image[row_index-1][column_index]=1
			#if column_index of the one is not at the first column, add a one to the left
		   if column_index != 0
                image[row_index][column_index-1]=1
		   end
           
       
            end
    end
    
end

puts image.join

# to print each item and its location
# subarray.each_index do |x|
# 	puts String(i) << " " << String(x) << image[i][x]
# end
# subarray.each_index do |x|
# 				if subarray[i][x] == 1
# 					subarray[x+1][x] == 1
# 					subarray[x-1][x] == 1
# 					subarray[x][x+1] == 1
# 					subarray[x][x-1] == 1
# 				end
