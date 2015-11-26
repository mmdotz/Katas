#Given a list of rows of a square matrix, find the product of the main diagonal.


#return value at index n+1

def main_diagonal_product(mat)
  n = 0                         # => 0
  @new_mat = []                 # => []
  mat.length.times do           # => 2
    @new_mat << mat[n][n]       # => [1], [1, 4]
    n+=1                        # => 1, 2
    end                         # => 2
  puts @new_mat.inject(:*)      # => nil
end

mat = [[1,2],[3,4]]         # => [[1, 2], [3, 4]]
# mat = [[1,2,3],[4,5,6],[7,8,9]]
main_diagonal_product(mat)  # => nil

# >> 4
