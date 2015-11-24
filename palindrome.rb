def palindrome(string)
  new_word = string.gsub(" ","").downcase
  puts new_word.reverse == new_word
end

palindrome("Taco cat")
palindrome("Michelle")
palindrome("hiiH")
palindrome("124")
