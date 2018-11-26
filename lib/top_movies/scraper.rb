require 'pry'


class TopMovies::Scraper


  def self.scraped_data
    doc = Nokogiri::HTML(open("https://www.imdb.com/list/ls000049962/"))
    movies = []
    doc.css(".lister-item-content").each do |movie_block|
      movie_block.css('a').each do |movie|
        binding.pry
        movie_name = movie.text
        movies << {name: movie_name}
      end
    end
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
