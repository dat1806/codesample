#lay gia tri nguoi dung dua vao sau ten file (ruby Open_file.rb text.txt)
filename = ARGV.first
File.open(filename).each { |line| puts line }
print open(filename).readline
