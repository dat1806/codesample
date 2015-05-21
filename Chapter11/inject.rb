class Fixnum
	def factorial
		(1..self).inject { |a,b| a*b}
	end
end

puts 8.factorial

require 'benchmark'

Benchmark.bm do |bm|
	bm.report('ruby:') do
		100000.times do
			8.factorial
		end
	end
end