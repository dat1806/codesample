#splitting.rb

puts "This is a test".scan(/\w/).join(',')
puts "Short sentence. Another. No more.".split(/\./).inspect
puts "Words with lots of spaces".split(/\s+/).inspect
