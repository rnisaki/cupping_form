require 'csv'

Country.destroy_all

CSV.foreach("db/country.csv",:encoding => "UTF-8",:headers => true) do |row|
  Country.create(name: row[0])
end
