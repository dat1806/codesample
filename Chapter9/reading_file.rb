=begin
	
rescue Exception => e
	
end
class MyFile
attr_reader :handle
def initialize(filename)
@handle = File.new(filename, "r")
end
def finished
@handle.close
end
end

f = MyFile.new("text.txt")
puts f.handle.gets
f.finished

#File.open("text.txt").each_byte { |byte| puts byte }

#so dong tuong ung vs so times
File.open("text.txt") do |f|
	2.times {puts f.gets(',')}
end

#in ca file
puts File.open("text.txt").readlines
=end
#in ra 10 ki tu dau tien trong file
File.open("text.txt") do |f|
puts f.read(10)
end


f = File.open("text.txt")
puts f.pos # vi tri hien tai cua doan text
puts f.gets
puts f.pos


f = File.open("text.txt")
f.pos = 8 # den vi tri thu 8
puts f.gets
puts f.pos

data = File.read("text.txt")
puts data

array_of_lines = File.readlines("text.txt")
puts array_of_lines