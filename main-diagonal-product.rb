#Given a list of rows of a square matrix, find the product of the main diagonal.


#return value at index n+1

def main_diagonal_product(mat2)
  n = 0
  product =[]
  mat2.length.times do
    product << mat2.select{ |x| x[n] }
    n+=1
    end
  product = product.flatten.inject(:*)
  print product
end

mat2 = [[1,2],[3,4]]
mat = [[1,2,3],[4,5,6],[7,8,9]]
main_diagonal_product(mat2)
