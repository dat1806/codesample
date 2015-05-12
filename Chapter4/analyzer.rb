#analyzer.rb

File.open("text.txt").each { |line| puts line }

line_count = 0
File.open("text.txt").each { |line| line_count += 1 }
puts line_count

text=''
line_count = 0
File.open("text.txt").each do |line|
line_count += 1
text << line
end
puts "#{line_count} lines"

lines = File.readlines("text.txt")
line_count = lines.size
text = lines.join
puts "#{line_count} lines"

total_characters = text.length
puts "#{total_characters} characters"

total_characters_nospaces = text.gsub(/\s+/,'').length
puts "#{total_characters_nospaces} characters excluding spaces"

puts "#{text.split.length} words (split)"
puts "#{text.scan(/\w+/).length} words (scan)"

paragraph_count = text.split(/\n\n/).length
puts "#{paragraph_count} paragraphs"
sentence_count = text.split(/\.|\?|!/).length
puts "#{sentence_count} sentences"

puts "#{sentence_count / paragraph_count} sentences per paragraph (average)"
puts "#{text.split.length / sentence_count} words per sentence (average)"
