=begin
require 'csv'
people = CSV.parse(File.read('text.txt'))
puts people[0].join(" ")
puts people[1][0]
puts people[2][0]
=end

#puts CSV.read('text.txt').inspect

#search
require 'csv'
people = CSV.read('text.txt')
a = people.find { |i| i[1] =~ /Manager/}
puts a.inspect

young_people = people.find_all do |p|
	p[3].to_i.between?(20,40)
	p[2].include?("Male")
	p[1].include?("Manager")
end
puts young_people.inspect