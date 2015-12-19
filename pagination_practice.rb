# A category page displays a set number of products per page, with pagination at
# the bottom allowing the user to move from page to page.
#
# Given that you know the page you are on, how many products are in the category
# in total, and how many products are on any given page, how would you output a
# simple string showing which products you are viewing..
#
# examples
#
# In a category of 30 products with 10 products per page, on page 1 you would see
# 'Showing 1 to 10 of 30 Products.'
# In a category of 26 products with 10 products per page, on page 3 you would see
# 'Showing 21 to 26 of 26 Products.'
# In a category of 8 products with 10 products per page, on page 1 you would see
# 'Showing 1 to 8 of 8 Products.'

def pagination_text(page_number, page_size, total_products)

  if page_size > total_products
    ending_number = total_products
    if page_number == 1
      starting_number = page_number
    else
      starting_number = (page_size/page_number) + 1
    end
  else (page_size < total_products)
    if page_number == 1
      starting_number = page_number
      ending_number = page_size
    else
      starting_number = ((page_number - 1) * page_size) + 1
      ending_number = page_size * page_number
    end
  end

  puts "Showing #{starting_number} to #{ending_number} of #{total_products} Products."
end

pagination_text(3, 10, 60)
pagination_text(43,15,3456)
pagination_text(3,10,26)
