require 'net/http'
require 'uri'

uri = URI.parse('http://www.ibiblio.org')
http = Net::HTTP.new(uri.host, uri.port)

request = Net::HTTP::Get.new('/xml/examples/shakespeare/macbeth.xml')

response = http.request(request)

response.code


