class TopMovies::CLI

  def call
    TopMovies::Scraper.create_movie
    puts "Welcome to Top Movies!"
    lists_movies
  end

  def lists_movies
    puts "Here is a list of movies"
    TopMovies::Movie.all
  end

  def valid_input?(input)
    input.include?(1..56)
    end

  def user_selection
    input = nil
      puts "Please enter the number of the state to get more info, 'states' to see the list again or type 'exit' to quit"
      input = gets.strip.downcase.to_i
        puts FindAPark::State.all_the_states_list[input - 1]

  end

  def bye
    puts "Please visit us again to learn more about your national parks"
    puts "Goodbye"
  end

end
