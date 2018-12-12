require 'pry'


class TopMovies::Scraper

  def scraped_data
  Nokogiri::HTML(open("https://www.imdb.com/list/ls000049962/"))

  end

  def create_movie_index
    self.scraped_data.css(".lister-item-content")
  end

  def create_movie
    self.create_movie_index.each do |movie_block|
      movie_data = movie_block.css('.lister-item-header')
      name = movie_data.css('a[href]').text
      place = movie_data.css('span[class]')[0].text.gsub(/[.]/, "")
      date = movie_data.css('span[class]')[1].text.gsub(/[()]/, "")
      doc = Nokogiri::HTML(open("https://www.imdb.com#{movie_data.css("a").attribute("href").text}"))
      summary = doc.css("div.summary_text").text
      TopMovies::Movie.new(name,place,date,summary)
    end
  end

end
