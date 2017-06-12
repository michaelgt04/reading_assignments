class InputValidator

  def self.reset_mentees_input
    input = gets.chomp
    while !['y', 'n'].include?(input)
      puts 'Please try again, that was not valid'
      input = gets.chomp
    end
    return input
  end

  def self.get_type_input
    input = gets.chomp
    while !['number', 'string', 'random'].include?(input)
      puts 'Please try again, that was not valid'
      input = gets.chomp
    end
    return input
  end

end
