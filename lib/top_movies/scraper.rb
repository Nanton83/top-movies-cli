require 'pry'


class TopMovies::Scraper

  def self.create_movie
    self.scraped_data.each do |movie|
      TopMovies::Movie.new_from_index(movie)
      # binding.pry
    end
  end

  def self.scraped_data
    doc = Nokogiri::HTML(open("https://www.imdb.com/list/ls000049962/"))
    movies = []
    doc.css(".lister-item-content").each do |movie_block|
      movie_block.css('.lister-item-header').each do |movie|
        movie_name = movie.css('a[href]').text
        movie_place = movie.css('span[class]')[0].text.gsub(/[.]/, "")
        movie_date = movie.css('span[class]')[1].text.gsub(/[()]/, "")
        movies << {
          name: movie_name,
          place: movie_place,
          date: movie_date
        }
      end
    end
    movies
  end
end
