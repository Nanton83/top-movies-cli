require 'pry'


class TopMovies::Scraper


  def self.scraped_data
    doc = Nokogiri::HTML(open("https://list25.com/the-25-best-movies-ever-made/"))
    movies = []
    doc.css(".list-items").each do |container|
      container.css('.item-title').each do |movie|
        movie_name = movie.text
        movies << {name: movie_name}
      end
    end
    movies
  end

  # def self.get_movie
  #   place = self.scraped_data.css('.item-header')
  # end
  #
  # def self.movie_info
  #   self.get_movie.each do |movie_group|
  #     movie = TopMovies::Movie.new
  #     movie.title = movie_group.css(".item-title").text
  #   end
  # end

  # def self.make_movie
  #   self.get_movie_number.each do |place|
  #     movie = TopMovies::Movie.new
  #     movie.place = place.css('.item_number')
  #     movie.place
  #   end
  # end

end
