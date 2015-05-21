require 'net/http'
=begin
Net::HTTP.start('www.rubyinside.com') do |http|
	req = Net::HTTP::Get.new('/test.txt')
	puts http.request(req).body
end

url = URI.parse('http://www.rubyinside.com/test.txt')
response = Net::HTTP.get_response(url)
puts response.body


#checking for Errors and Redirects
def get_web_document(url)
	uri = URI.parse(url)
	response = Net::HTTP.get_response(uri)

	case response
		when Net::HTTPSuccess
			return response.body
		when Net::HTTPRedirection
			return get_web_document(response['Location'])
		else
			print "404"
	end
end

puts get_web_document('http://www.rubyinside.com/test.txt')
puts get_web_document('http://www.rubyinside.com/non')
=end


#Basic Authentication
url = URI.parse('http://rubyinside.com/test.txt')

Net::HTTP.start(url.host, url.port) do |http|
	req = Net::HTTP::Get.new(url.path)
	req.basic_auth('user', 'password')
	puts http.request(req).body
end