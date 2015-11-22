#Given a list of rows of a square matrix, find the product of the main diagonal.


#
# def main_diagonal_product(mat)
#   n = 0
#   product =[]
#   mat.length.times do
#     product << mat.select{ |x| x[n] }
#     n+=1
#     end
#   product.flatten.inject(:*)
#   print product
# end
#
# mat = [[1,2,3],[4,5,6],[7,8,9]]
# main_diagonal_product(mat)


#return value at index n+1

def main_diagonal_product(mat)
  n = 0
  product =[]
  mat.length.times do
    product << mat.select{ |x| x[n] }
    n+=1
    end
  product.flatten.inject(:*)
  print product
end

mat = [[1,2,3],[4,5,6],[7,8,9]]
main_diagonal_product(mat)
