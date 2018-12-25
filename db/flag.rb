require "mechanize"
require "csv"
$country = []

agent = Mechanize.new
page = agent.get("https://ja.wikipedia.org/wiki/%E5%9B%BD%E6%97%97%E3%81%AE%E4%B8%80%E8%A6%A7")

page.css(".wikitable").css("tr").each do |content|
  country = []
  #国名
  country << content.css("a").inner_text.gsub("国旗","")
  #国旗画像
  c = content.css(".image").css("img").to_s
  country << c.scan(/src="\/\/(.+)" width=/).flatten[0]
  if country[1] == nil
    next
  end
  $country << country
end
    
CSV.open('flag.csv','w') do |file|
  $country.each do |row|
    file << row
  end
end
