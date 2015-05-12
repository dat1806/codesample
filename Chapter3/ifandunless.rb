#ifandunless.rb

puts "+)if"
age = 10
if age < 18
puts "You're too young to use this system"
end

puts "+)if else"
age = 10
if age < 18
puts "You're too young to use this system"
else
puts "You can use this system"
end

puts "+)unless"
age = 10
unless age >= 18
puts "You're too young to use this system"
puts "So we're going to exit your program now"
exit
end
