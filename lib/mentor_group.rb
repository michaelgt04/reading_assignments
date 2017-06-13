class MentorGroup
  attr_reader :members, :name

  def initialize(members = [])
    @members = members
  end

  def fill_mentor_group(array_of_students)
    array_of_students.each do |student|
      @members << student
    end
  end

  def self.create_persisted_mentees(store)
    puts 'What are the names of the people in your group (please separate by a comma followed by a space)?'
    name_string = gets.chomp
    new_mentees = name_string.split(', ')

    mentees = new_mentees.map { |mentee| Student.new(mentee) }

    store.transaction do
      store["mentees"] = mentees
    end
    return mentees
  end

  def self.reset_mentees_option(store)
    puts 'Would you like to reset your group and input their names again?'
    reset_choice = InputValidator.reset_mentees_input
    if reset_choice == 'y'
      mentees = self.create_persisted_mentees(store)
      return mentees
    else
    end
  end
end
