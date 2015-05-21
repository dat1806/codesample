f = File.new("text1.txt", "r+")
f.seek(-5, IO::SEEK_END)
f.putc "X"
f.close

f = File.new("text1.txt", "r")
while a = f.getc
puts a.chr
f.seek(5, IO::SEEK_CUR)
end

puts File.mtime("text.txt")