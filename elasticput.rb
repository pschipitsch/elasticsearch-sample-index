require 'csv'

arr_of_arrs = CSV.read("indexme.csv")
arr_of_arrs.each do |row|
  `curl -XPOST http://#{ARGV[0]}/comicbook/superhero/ -d '{"name" : "#{row.first}", "summary" : "#{row.last}" }'`
end
