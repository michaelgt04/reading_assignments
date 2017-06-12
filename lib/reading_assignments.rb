require "reading_assignments/version"
require 'pry'
require 'csv'
require 'yaml/store'
require_relative 'mentor_group'
require_relative 'student'
require_relative 'student_randomizer'
require_relative 'input_validator'

module ReadingAssignments

  store = YAML::Store.new("members.yaml")
  mentees = store.transaction { store["mentees"] }

  if !mentees
    mentees = MentorGroup.create_persisted_mentees(store)
  else
    mentees = MentorGroup.reset_mentees_option(store)
  end

  mentor_group = MentorGroup.new(mentees)

  randomizer = StudentRandomizer.new(mentor_group)

  puts 'How would you like to choose your group (number, string, random)?'
  random_type = InputValidator.get_type_input

  puts 'How many articles do you need to assign?'
  article_number = gets.chomp.to_i

  if random_type == 'number'
    puts 'What number would you like to use?'
    number = gets.chomp.to_i
    randomizer.choose_by_number(number, article_number)
  elsif random_type == 'string'
    puts 'What is your secret random passcode?'
    passcode = gets.chomp
    randomizer.choose_by_string(passcode, article_number)
  else
    randomizer.choose_totally_random(article_number)
  end
end
