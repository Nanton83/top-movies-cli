class TopMovies::CLI

  def call
    TopMovies::Scraper.new.create_movie
    puts "Welcome to Top Movies!"
    lists_movies
  end

  def lists_movies
    puts "Here is a list of movies"
    puts TopMovies::Movie.doc
  end


  def bye
    puts "Please visit us again to learn more about your national parks"
    puts "Goodbye"
  end

end
