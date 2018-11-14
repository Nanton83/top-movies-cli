require 'pry'


class TopMovies::Scraper

  def self.scraped_data
    doc = Nokogiri::HTML(open("https://www.afi.com/100Years/movies.aspx"))
    doc
  end

  def self.movie_title
    @titles = self.scraped_data.css('.filmTitle').text.split("\n")
    @titles.map do |title|
      movie = title.strip
      movie
    end
  end

end
