require 'tmpdir'
tempfilename =File.join(Dir.tmpdir, "myapp.dat")
tempfile = File.new(tempfilename,"w")
tempfile.puts "this is only temporary"

File.delete(tempfilename)

require 'tempfile'
f = Tempfile.new('myapp')
f.puts "Hello"
puts f.path
f.close