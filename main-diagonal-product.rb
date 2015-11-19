#Given a list of rows of a square matrix, find the product of the main diagonal.



def main_diagonal_product(mat)
  product = mat.length.times do
      n = 0
      mat.select{ |x| x[n] }
      n+=1
    end
  product = product.inject(:*)
  puts product
end

mat = [[1,2,3],[4,5,6],[7,8,9]]
main_diagonal_product(mat)

#this is returning fixnum 3 and failing at inject
#select will map over each and return n, not n+1
