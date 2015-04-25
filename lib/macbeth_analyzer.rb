require 'net/http'
require 'uri'

class PlayAnalyser

  DOMAIN = 'http://www.ibiblio.org'
  PATH_TO_RESOURCE = '/xml/examples/shakespeare/macbeth.xml'

  attr_reader :request, :uri

  def initialize
    @request
  end

  uri = URI.parse(DOMAIN)
  http = Net::HTTP.new(uri.host, uri.port)

  def get_play(PATH_TO_RESOURCE)
    request = Net::HTTP::Get.new(PATH_TO_RESOURCE)
  end

  response = http.request(request)

  response.code

end


