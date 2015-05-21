class SizeMatters
	include Comparable
	attr_accessor :str
	
	def <=> (other)
		str.size <=> other.str.size
	end
	
	def initialize(str)
		@str = str
	end

	
end

s1 = SizeMatters.new("Z")
s2 = SizeMatters.new("XX")
s3 = SizeMatters.new("YYY")

puts s1 < s2
puts s3.between?(s1,s2)
puts [1,4,5,3,1,6].sort.inspect