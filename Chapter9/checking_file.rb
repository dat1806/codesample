class MyFile
	attr_reader :handle
	def initialize(filename)
		if File.exist?(filename)
			@handle = File.new(filename, "r")
		esle
			return false
		end
	end
end

puts File.size("text.txt")