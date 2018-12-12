require 'pry'

class TopMovies::Movie

  attr_accessor :name, :place, :date, :url, :summary

  @@all = []

    def initialize(name=nil, place=nil, date=nil, summary=nil)
      @name = name
      @place = place
      @date = date
      @summary = summary
      @@all << self
    end

    def self.all
      @@all
    end

    def self.find(user_input)
    self.all[user_input-1]
    end

    # def summary
    #   @movie_summary ||= doc.css("div.summary_text").text
    # end
    #
    # def doc
    # @doc ||= Nokogiri::HTML(open(self.url))
    # end


end
