task :get_data => :environment do
  page = Nokogiri::HTML(open("http://vietlott.vn/vi/trung-thuong/ket-qua-trung-thuong/mega-6-45/winning-numbers/"))
  num_page = page.css('div.result ul.pagination li').length - 2

  num_page.downto(1) do |i|
    sub_page = Nokogiri::HTML(open("http://vietlott.vn/vi/trung-thuong/ket-qua-trung-thuong/mega-6-45/winning-numbers/?p=#{i}"))
    data = sub_page.css('div.result table.table tbody tr')

    data.reverse_each do |d|
      date = d.css('td a').text
      number = []
      (0..5).each do |i|
        number << d.css('td span')[i].text
      end
      number = number.join(",")

      unless Result.find_by(date: date.to_date).present?
        puts "===================="
        puts date.to_date
        Result.create!(date: date.to_date, result: number)
      end
    end
  end
end
