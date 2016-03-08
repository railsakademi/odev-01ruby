require 'csv'
require './person.rb'

class AddressBook
  def initialize(csv_path)
    @people = Array.new

    CSV.foreach(csv_path, headers: true) do |row|
      @people = @people << Person.new(row[0], row[1], row[2], row[3])
    end
  end

  def print_people
    @people.each do |person|
      puts person
    end
  end

  def search_person(person_name)
    @people.each do |person|
      if person.full_name.include? person_name
        puts person
      end
    end
  end
end
