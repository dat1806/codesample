file_name = ARGV.first

lines = File.readlines(file_name)
text = lines.join

#lines count
lines_count = lines.length
puts "Lines count: #{lines_count} lines"

#character count
character_count = text.length
puts "Character count: #{character_count} characters"

#character count excluding spaces
cha_count_no_spaces = text.gsub(/\s+/,'').length
puts "Character count excluding spaces: #{cha_count_no_spaces} characters"

#Split out all the whitespace to find out how many words there are
words_count = text.split.length
#word_count = text.scan(/\w+\-\-\w+|\w+\'\w+|\w+\-\w+|\w+/).length
#puts word_count
puts "#{words_count} words"

#how many sentences there are
sentences_count = text.split(/\.|\?|!/).length
puts "#{sentences_count} sentences" 

#How many paragraphs there are
paragraphs = text.split(/\n\n/).length
puts "#{paragraphs} paragraphs"

#Average number of words per sentence
words_sentence = words_count.to_f/sentences_count.to_f
puts "#{words_sentence.round(2)} words per sentence"

#Average number of sentences per paragraph
sentences_paragraph = sentences_count.to_f/paragraphs.to_f
puts "#{sentences_paragraph.round(2)} sentences per paragraph"