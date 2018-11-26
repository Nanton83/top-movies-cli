class TopMovies::CLI

  def call
    puts "Welcome to Top Movies!"


  end

  def lists_states
    puts "We will show parks by state."
      states = FindAPark::State.all_the_states_list
      states.each_with_index do |state, idx|
      puts "#{idx + 1}." "#{state}"
    end
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
