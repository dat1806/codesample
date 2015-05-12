#regularexpressions.rb

puts "Substitutions"
puts "foobar => "+"foobar".sub('bar', 'foo')
puts "this is a test => "+"this is a test".gsub('i','')

x = "This is a test"
puts "This is a test => "+x.sub(/^../,'Hello')
puts "This is a test => "+x.sub(/..$/,'Hello')

puts "Iteration"
"xyz".scan(/./){|letter| puts letter}
puts "This is a test"
"This is a test".scan(/../) {|a| puts a}
"This is a test".scan(/\w\w/){|b| puts b} 

"This is a test".scan(/[aeiou]/) { |x| puts x }

"This is a test".scan(/[a-m]/) { |x| puts x }

"The car costs $1000 and the cat costs $10".scan(/\d+?/) do |x|
puts x
end
