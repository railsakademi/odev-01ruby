require 'csv'

class AddressBook
  attr_accessor :people

  def initialize(csv_path)
    @people = []
    CSV.foreach(csv_path) do |row|
      @people.push(Person.new(row[0], row[1], row[2],row[3]))
    end
  end

  def print_people
    @people.each do |person|
       puts print_row_person person
    end
  end

  def search_person(person_name)
    @people.each do |person|
       puts print_row_person(person) if  person.full_name.include? person_name
    end
  end

  def print_row_person(person)
    "#{person.id}, #{person.full_name}, #{person.phone_number}, #{person.city}"
  end
end
