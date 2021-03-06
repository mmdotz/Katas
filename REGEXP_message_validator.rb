def validate(message)
  if
    /MDZHB\s(\d{2})\s(\d{3})\s([A-Z]{1,})\s((\d{2}\s){3})(\d{2}$)/.match(message)  # => #<MatchData "MDZHB 80 516 GANOMATIT 21 23 86 25" 1:"80" 2:"516" 3:"GANOMATIT" 4:"21 23 86 " 5:"86 " 6:"25">, nil, nil, nil, nil, #<MatchData "MDZHB 80 516 GA 21 23 86 25" 1:"80" 2:"516" 3:"GA" 4:"21 23 86 " 5:"86 " 6:"25">, nil, #<MatchData "MDZHB 12 733 VOSKHOD 67 79 66 32" 1:"12" 2:"733" 3:"VOSKHOD" 4:"67 79 66 " 5:"66 " 6:"32">
    puts true                                                                     # => nil, nil, nil
 else
    puts false                                                                    # => nil, nil, nil, nil, nil
  end                                                                             # => nil, nil, nil, nil, nil, nil, nil, nil
end


validate("MDZHB 80 516 GANOMATIT 21 23 86 25")  #true
validate("MZHB 80 516 GANOMATIT 21 23 86 25") #f
validate("MDZHB 8 516 GANOMATIT 21 23 86 25") #f
validate("MDZHB 80 51 GANOMATI 21 23 86 25") #f
validate("MDZHB 80 516 GANOMATIT 2 23 86 25") #
validate("MDZHB 80 516 GA 21 23 86 25") #t
validate("MDZHB 80 516 GANOMATIT 21 23 86") #f

#not passing
print "not passing:"
validate("MDZHB 12 733 VOSKHOD 67 79 66 322")  # => nil
# Expected: false, instead got: "MDZHB 12 733 VOSKHOD 67 79 66 322"





=begin
In Russia, there is an army-purposed station named UVB-76 or "Buzzer"
(see also https://en.wikipedia.org/wiki/UVB-76). Most of time specific "buzz"
noise is being broadcasted, but on very rare occasions, the buzzer signal is
interrupted and a voice transmission in Russian takes place. Transmitted
messages have always the same format like this:

MDZHB 01 213 SKIF 38 87 23 95

or:

MDZHB 80 516 GANOMATIT 21 23 86 25

Message format consists of following parts:

Initial keyword "MDZHB";
Two groups of digits, 2 digits in first and 3 in second ones;
Some keyword of arbitrary length consisting only of uppercase letters;
Final 4 groups of digits with 2 digits in each group.
Your task is to write a function that can validate the correct UVB-76 message.
Function should return "True" if message is in correct format and
"False" otherwise.
=end

# >> a
# >> true
# >> false
# >> false
# >> false
# >> false
# >> a
# >> true
# >> false
# >> true
