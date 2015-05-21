class String
	def sentences
		self.gsub(/\n|\r/, ' ').split(/\.\s*/)
	end
	
	def words
		self.scan(/\w[\w\'\-]*/)
	end
end

class WordPlay
	def self.switch_pronouns(text)
		text.gsub(/\b(I am|You are|I|You|Me|Your|My)\b/i) do |pronoun|
		case pronoun.downcase
			when "i"
				"you"
			when "you"
				"me"
			when "me"
				"you"
			when "i am"
				"you are"
			when "you are"
				"i am"
			when "your"
				"my"
			when "my"
				"your"
		end
		end.sub(/^me\b/i, 'i')
	end
	
	def self.best_sentence(sentences, desired_words)
		ranked_sentences = sentences.sort_by do |s|
			s.words.length - (s.downcase.words - desired_words).length
		end
	puts ranked_sentences
	ranked_sentences.last
	end
end

WordPlay.best_sentence(['This is a test',
'This is another test',
'This is a great test'],
%w{test great this})