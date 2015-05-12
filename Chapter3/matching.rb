#matching.rb

puts "String has vowels" if "This is a test" =~ /[aeiou]/
puts "String has vowels" if "This is a test".match(/[aeiou]/) 

x = "This is a test".match(/(\w+) (\w+) (\w+)/)
puts x[0]
puts x[1]
puts x[2]
puts x[3]