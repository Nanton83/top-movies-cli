require 'pry'


class TopMovies::Scraper

  def self.scraped_data
    doc = Nokogiri::HTML(open("https://list25.com/the-25-best-movies-ever-made/"))
    doc
  end

  def self.get_movie_number
    place = self.scraped_data.css('.item-number').text.split(" ")
    place.each do |number|
      number
    end
  end

  # def self.make_movie
  #   self.get_movie_number.each do |place|
  #     movie = TopMovies::Movie.new
  #     movie.place = place.css('.item_number')
  #     movie.place
  #   end
  # end

end
