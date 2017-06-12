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
    puts 'What are the names of the people in your group (please separate by comma)?'
    name_string = gets.chomp
    new_mentees = name_string.split(', ')

    mentees = new_mentees.map { |mentee| Student.new(mentee) }

    store.transaction do
      store["mentees"] = mentees
    end
    return mentees
  end
end
