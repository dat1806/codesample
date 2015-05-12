#basichashmethods.rb

puts "Iterating Through Hash Elements"
x = {"a" => 1, "b" => 2, "c" => 3}
x.each { |key, value| puts "#{key} equals #{value}"}

puts "Retrieving Keys"
puts x.keys.inspect

puts "Deleting Hash Elements"
x = {"a" =>1, "b" => 2}
x.delete("a")
puts x.inspect

puts "Deleting Hash Elements Conditionally"
x = {"a" => 100, "b" => 20}
x.delete_if{ |key, value| value < 25}
puts x.inspect