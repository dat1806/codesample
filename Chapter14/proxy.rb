require 'net/http'
=begin
web_proxy = Net::HTTP::Proxy('your.proxy.hostname.or.ip', 8080)
url = URI.parse('http://www.rubyinside.com/test.txt')

web_proxy.start(url.host,url.port) do |http|
	req = Net::HTTP::Get.new(url.path)
	puts http.request(req).body
end
=end

http_class = ARGV.first ? Net::HTTP::Proxy(ARGV[0], ARGV[1]):Net::HTTP
url = URI.parse('http://www.rubyinside.com/test.txt')
response = http_class.get_response(url)
puts response.body

