require 'pry'

class TopMovies::Movie

  attr_accessor :name, :place, :date, :url, :movie_summary

  @@all = []

  # def self.new_from_index(movie_data)
  #   self.new(
  #   movie_data.css('a[href]').text,
  #   movie_data.css('span[class]')[0].text.gsub(/[.]/, ""),
  #   movie_data.css('span[class]')[1].text.gsub(/[()]/, ""),
  #   "https://www.imdb.com#{movie_data.css("a").attribute("href").text}"
  #   )
  # end



    def initialize(name=nil, place=nil, date=nil, url=nil)
      @name = name
      @place = place
      @date = date
      @url = url
      @@all << self
    end

    def self.all
      @@all
    end

    def self.find(user_input)
    self.all[user_input-1]
    end

    def summary
      @movie_summary ||= doc.css("div.summary_text").text
    end

    def doc
    @doc ||= Nokogiri::HTML(open(self.url))
    end


end
