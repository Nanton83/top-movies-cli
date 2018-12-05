class TopMovies::CLI

  def call
    TopMovies::Scraper.new.create_movie
    puts "Welcome to Top Movies!"
    lists_movies
  end

  def lists_movies
    puts "We will list the top 100 movies 10 at a time."
    puts "Are you ready to begin?  Enter y/n"
    input = gets.strip.downcase
    if input == "y"
      movie = TopMovies::Movie.find(5)
      print_movie(movie)
    elsif input == "n"
      puts ""
      puts "Please visit us again to see more top 100 movies"
      puts "Goodbye"
      exit
    else
      puts ""
      puts "Houston, we have a problem with that input"
      lists_movies
    end
  end

  def print_movie(movie)
    puts "#{movie.name}"
  end


end
