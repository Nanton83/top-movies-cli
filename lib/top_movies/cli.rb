class TopMovies::CLI

  def call
    TopMovies::Scraper.new.create_movie
    puts "Welcome to Top Movies!"
    start_user_interaction
  end

  def start_user_interaction
    puts "We will list the top 100 movies rated by imdb"
    puts "Are you ready to begin?  Enter y/n"
    input = gets.strip.downcase
    if input == "y"
      list_movies
      # movie = TopMovies::Movie.find(5)
      # print_movie(movie)
    elsif input == "n"
      puts ""
      puts "Please visit us again to see more top 100 movies"
      puts "Goodbye"
      exit
    else
      puts ""
      puts "Houston, we have a problem with that input"
      start_user_interaction
    end
  end

  def list_movies
    puts "To see 1-10 enter 1"
    puts "To see 11-20 enter 2"
    puts "To see 21-30 enter 3"
    puts "To see 31-40 enter 4"
    puts "To see 41-50 enter 5"
    puts "To see 51-60 enter 6"
    puts "To see 61-70 enter 7"
    puts "To see 71-80 enter 8"
    puts "To see 81-90 enter 9"
    puts "To see 91-100 enter 10"

    input = gets.strip.to_i
      if input.between?(1, 10)
        range(input)
      elsif !(input.between?(1, 10))
      puts "Houston, we have a problem with that input"
      list_movies
      end
    end

  def range(input)
      movie = TopMovies::Movie.find(1)
      puts "##{movie.place} #{movie.name} #{movie.date}"
  end

end
