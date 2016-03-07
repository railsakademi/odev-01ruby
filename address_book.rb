require 'csv'
require './person.rb'


class AddressBook
  attr_accessor :peoples
  def initialize(csv_path)
    @peoples = {}
    csv = CSV.read(csv_path)
    csv.shift
    csv.each do |csvRow|
        @peoples[csvRow[0]] = Person.new(csvRow[0], csvRow[1], csvRow[2], csvRow[3])
    end
  end

  def print_people
    @peoples.each do |key, person|
        puts "#{person.id},#{person.full_name},#{person.phone_number},#{person.city}"
    end
  end

  def search_person(person_name)
    @peoples.each do |key, person|
        if person.full_name.include? person_name
            puts "#{person.id},#{person.full_name},#{person.phone_number},#{person.city}"
        end
    end
  end
end
