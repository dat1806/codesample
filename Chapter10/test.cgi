require 'cgi'
cgi = CGI.new
puts cgi.header
puts "Content-type: text/html\n\n"
puts "<html><body>This is a test</body></html>"