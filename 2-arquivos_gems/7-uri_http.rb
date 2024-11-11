require 'uri'
require 'net/http'

url = URI.parse('https://www.example.com')

http = Net::HTTP.new(url.host, url.port)

http.use_ssl = (url.scheme ==  'https')

request = Net::HTTP::Get.new(url)

response = http.request(request)

if response.is_a?(Net::HTTPSuccess)
  puts "Status: #{response.code}  #{response.message}"
  puts response.body
else
  puts "Error: #{response.code}  #{response.message}"
end