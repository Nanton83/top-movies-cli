require 'pry'


class TopMovies::Scraper

  def scraped_data
  Nokogiri::HTML(open("https://www.imdb.com/list/ls000049962/"))
  # movies = []
    # doc.css(".lister-item-content").each do |movie_block|
    #   movie_block.css('.lister-item-header')
        # movie_name = movie.css('a[href]').text
        # movie_place = movie.css('span[class]')[0].text.gsub(/[.]/, "")
        # movie_date = movie.css('span[class]')[1].text.gsub(/[()]/, "")
        # movies << {
        #   name: movie_name,
        #   place: movie_place,
        #   date: movie_date
        # }
  end

  def create_movie_index
    self.scraped_data.css(".lister-item-content").each do |movie_block|
        @puts = movie_block.css('.lister-item-header')
      # name = movie.fetch(:name)
      # place = movie.fetch(:place)
      # date = movie.fetch(:date)
 # binding.pry
      # TopMovies::Movie.new_from_index(movie_data)
    end
    @puts
  end

  def create_movie
    create_movie_index.each do |movie_data|
      TopMovies::Movie.new_from_index(movie_data)

    end
  end

end
