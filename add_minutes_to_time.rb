# ￼Code Challenge
# Write a function or method that accepts two mandatory arguments and returns a result.
# ￼￼￼Requirements:
# ￼Use Ruby or another language of your choosing, and write production quality code.
# ￼Your function or method should not use any date/time library.
# ￼The first argument is a time value in the form of a string with the following
# ￼￼￼￼￼format:
# ￼￼[H]H:MM {AM|PM}
# ￼￼￼￼The second argument is the number of minutes, as an integer value.
# ￼The return value of the function should be a string of the same format as the first
# ￼argument, which is a result of adding the minutes to the time.
# ￼￼￼￼￼￼￼￼￼￼For example
# would return
# ￼￼￼￼add_minutes('9:13 AM', 10)

# Slice the time argument's whitespace and am or pm off the end and assign to a variable ampm to concat later
# Split the time argument at the colon, save integers as variable time
# add min_to_add to minutes, assign to variable new_time
# interpolate and concat variables for return

# edge cases
# change am to pm or pm to am if hour passes through midday or midnight
# if min_to_add is greater than X, add Y to hour

def add_minutes(time, min_to_add)
  ampm = time.slice!(-3..-1)                           #=> " am"
  time = time.split(":").map{ |num| num.to_i }         #=> [9, 13]
  hour = time[0]
  new_minutes = time[1] + min_to_add
  if new_minutes > 59
    hour = hour +1
    new_minutes = new_minutes - 60
  end
  new_time = "#{hour}" + ":" + "#{new_minutes}" + "#{ampm}"
  puts new_time
end

add_minutes('9:13 am', 10)  #=> 9:23 am
add_minutes('11:55 am', 10) #=> 12:05 pm
add_minutes('11:55 pm', 10) #=> 12:05 am
add_minutes('1:23 pm', 90)

#todo:
# 1. format with Strftime so the minutes are two whole places (05 prints as 5)
# 2. address all cases where adding minutes changed the portion of day from/to am/pm
# 3. If min_to_add are greater than X, subtracting 60 minutes as it stands won't return correct tim format (59 minutes or less)
# 4. add logic for time argument in military format
