require 'csv'
require 'json'
require 'net/http'
require 'uri'


uri     = URI.parse("http://#{ARGV[0]}/comicbook/superhero")
headers = {'Content-Type' => "application/json",
           'Accept'       => "application/json"}
http    = Net::HTTP.new(uri.host, uri.port)
request = Net::HTTP::Post.new(uri.request_uri, headers)

arr_of_arrs = CSV.read("indexme.csv")
arr_of_arrs.each do |row|
  data = {
    name:    row.first,
    summary: row.last
  }
  request.body = data.to_json
  response     = http.request(request)
  puts response.body
end
