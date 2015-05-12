#symbol.rb

know_ruby = :yes  
if know_ruby == :yes  
  puts 'You are a Rubyist'  
else  
  puts 'Start learning Ruby'  
end  

puts "Convert"

puts "string".to_sym.class
puts :symbol.to_s.class  
