require 'csv'
require './person.rb'


class AddressBook
  attr_accessor :peoples
  def initialize(csv_path)
    @peoples = {}
    csv = CSV.read(csv_path)
    csv.shift
    csv.each do |csv_row|
        @peoples[csv_row[0]] = Person.new(csv_row[0], csv_row[1], csv_row[2], csv_row[3])
    end
  end

  def print_people
    @peoples.each do |key, person|
        puts "#{person.id},#{person.full_name},#{person.phone_number},#{person.city}"
    end
  end

  def search_person(person_name)
    @peoples.each do |key, person|
        puts "#{person.id},#{person.full_name},#{person.phone_number},#{person.city}" if person.full_name.include? person_name
    end
  end
end
