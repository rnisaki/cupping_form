require 'csv'

Country.destroy_all

CSV.foreach("db/flag.csv",:encoding => "UTF-8") do |row|
  Country.create(name: row[0], image: row[1])
end