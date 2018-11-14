require 'pry'

class TopMovies::Movie

  attr_accessor :title, :place

  @@all = []

    def initialize(name=nil)
      @place = place
      @title = title
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
