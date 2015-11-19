#Given a list of rows of a square matrix, find the product of the main diagonal.



def main_diagonal_product(mat)
  n = 0
  mat.length.times do
    product = mat.select{ |x| x[n] }
    [n+=1]
    end
  product = product.inject(:*)
  puts product
end

mat = [[1,2,3],[4,5,6],[7,8,9]]
main_diagonal_product(mat)

#inject on nil class
