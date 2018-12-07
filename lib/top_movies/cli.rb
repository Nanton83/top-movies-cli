class TopMovies::CLI

  def call
    TopMovies::Scraper.new.create_movie
    puts ""
    puts "Welcome to Top Movies!"
    start_user_interaction
  end

  def start_user_interaction
    puts ""
    puts "We will list the top 100 movies rated by imdb"
    puts ""
    puts "Are you ready to begin?  Enter y/n"
    input = gets.strip.downcase
    if input == "y"
      list_movies
      # movie = TopMovies::Movie.find(5)
      # print_movie(movie)
    elsif input == "n"
      puts ""
      puts "Please visit us again to see more top 100 movies"
      puts ""
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
        iterate_range(input)
      elsif !(input.between?(1, 10))
      puts "Houston, we have a problem with that input"
      list_movies
      end
    end

  def iterate_range(input)
    if input == 1
      (1..10).each do |n|
        print_range(n)
      end
    elsif input == 2
      (11..20).each do |n|
        print_range(n)
      end
    elsif input == 3
      (21..30).each do |n|
        print_range(n)
      end
    elsif input == 4
      (31..40).each do |n|
        print_range(n)
      end
    elsif input == 5
      (41..50).each do |n|
        print_range(n)
      end
    elsif input == 6
      (51..60).each do |n|
        print_range(n)
      end
    elsif input == 7
      (61..70).each do |n|
        print_range(n)
      end
    elsif input == 8
      (71..80).each do |n|
        print_range(n)
      end
    elsif input == 9
      (81..90).each do |n|
        print_range(n)
      end
    elsif input == 10
      (91..100).each do |n|
        print_range(n)
      end
    end
    print_summary
  end

  def print_range(input)
    movie = TopMovies::Movie.find(input)
    puts "##{movie.place} #{movie.name} #{movie.date}"
  end

def print_summary
  puts "Would you like to see a movies summary? Enter y/n"
  input = gets.strip.downcase
    if input == "y"
    puts ""
    puts "Please enter the movies position on the top 100 chart."
    summary = gets.strip.to_i
    movie = TopMovies::Movie.find(summary)
    puts ""
    puts "#{movie.summary}"
  elsif input == "n"
      end
  restart
end


def restart
    puts "Would you like to start over?  Enter y/n"
    input = gets.strip.downcase
    if input == "y"
      list_movies
    elsif input == "n"
      puts ""
      puts "Please visit us again to see more top 100 movies"
      puts ""
      puts "Goodbye"
      exit
    else
      puts ""
      puts "Houston, we have a problem with that input"
        list_movies
    end
end

end
