require 'csv'

filename = "file.csv"

CSV.open(filename, "w") do |myfile|
     myfile << ["person","admission","section"]
     myfile << ["Jill Tremont","$30.00","24A"]
   end

#read STDOUT
puts File.read(filename)

# save file to user desktop
