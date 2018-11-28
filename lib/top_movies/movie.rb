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


    # def get_courses
    #   self.get_page.css(".post")
    # end
    #
    # def make_courses
    #   self.get_courses.each do |post|
    #     course = Course.new
    #     course.title = post.css("h2").text
    #     course.schedule = post.css(".date").text
    #     course.description = post.css("p").text
    #   end
    # end








end
