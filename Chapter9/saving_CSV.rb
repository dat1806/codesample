require 'csv'
people = CSV.read('text.txt')
laura = people.find { |person| person[0] =~ /Lauren/ }
laura[3] = 21

CSV.open('text.txt', 'w') do |csv|
people.each do |person|
csv << person
end
end
