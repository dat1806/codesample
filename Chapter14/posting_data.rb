require 'net/http'

url = URI.parse('http://www.rubyinside.com/test.cgi')
=begin
response = Net::HTTP.post_form(url,{'name' => 'Dat', 'age' => '21'})
puts response.body
=end

Net::HTTP.start(url.host,url.port) do |http|
	req = Net::HTTP::Post.new(url.path)
	req.set_form_data({'name' => 'Dat', 'age' => '21'})
	puts http.request(req).body
end