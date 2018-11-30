require 'pry'

class TopMovies::Movie

  attr_accessor :name, :place, :date

  @@all = []

    def initialize(name=nil, place=nil, date=nil)
      @name = name
      @place = place
      @date = date
      @@all << self
    end

    def self.all
      @@all
    end

    def self.new_from_index(name, place, date)
      self.new(name, place, date)
    end

end
