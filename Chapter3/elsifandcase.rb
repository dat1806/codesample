#elsifandcase.rb

puts "+) elsif"
fruit = "orange"
if fruit == "orange"
color = "orange"
elsif fruit == "apple"
color = "green"
elsif fruit == "banana"
color = "yellow"
else
color = "unknown"
end
puts color

puts "+) case"
fruit = "orange"
case fruit
when "orange"
color = "orange"
when "apple"
color = "green"
when "banana"
color = "yellow"
else
color = "unknown"
end
puts color

fruit = "orange"
color = case fruit
when "orange"
"orange"
when "apple"
"green"
when "banana"
"yellow"
else
"unknown"
end
puts color