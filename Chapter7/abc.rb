class String
def vowels
self.scan(/[aeiou]/i)
end
end

puts "This is a test".vowels.join('-')