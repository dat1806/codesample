#otherarraymethod.rb

puts "Array Addition and Concatenation"
x = [1, 2, 3]
y = ["a", "b", "c", 1]
z = x+y
puts z.inspect

puts "Array Subtraction and Diiference"
z = x-y
puts z.inspect

puts "Check for an Empty Array"
x = []
puts "x is empty" if x.empty?

puts "Check an Array for a Certain Item"
x = [1, 2, 3]
puts x.include?("x")
puts x.include?(3)

puts "Access the First and Last Elements of the Array"
puts x.first
puts x.last

puts x.first(2).join("-")

puts "Reverse the Order of the Array Elements"
puts x.reverse.inspect