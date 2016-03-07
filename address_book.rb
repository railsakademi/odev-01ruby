require 'csv'
require './person.rb'

class AddressBook

  attr_accessor :people

  def initialize(csv_path)
    @people = []
    CSV.foreach(csv_path) do |row|
      people.push(Person.new(row[0], row[1], row[2],row[3]))
    end
  end

  def print_people
    people.each do |person|
      puts "#{person.id}, #{person.full_name}, #{person.phone_number}, #{person.city}"
    end
  end

  def search_person(person_name)
    people.each do |person|
      if person.full_name.to_s.include? person_name
        puts "#{person.id}, #{person.full_name}, #{person.phone_number}, #{person.city}"
        return
      end
    end
    puts "#{person_name} bulunamadı."
  end
end
