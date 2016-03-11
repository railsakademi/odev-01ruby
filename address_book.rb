require "./person.rb"
require "csv"

class AddressBook
  attr_accessor :people
  def initialize(csv_path)
    @people = {}
    csv = CSV.read(csv_path)
    csv.shift
    csv.each do |csv_satir|
      @people[csv_satir[0]] = Person.new(csv_satir[0],csv_satir[1],csv_satir[2],csv_satir[3])
    end
  end

  def print_people
    @people.each do |key, person|
      puts "#{person.id},#{person.full_name},#{person.phone_number},#{person.city}"
    end

  end

  def search_person(person_name)
    @people.each do |key,person|
      if person.full_name.to_s.include? person_name
        puts "#{person.id},#{person.full_name},#{person.phone_number},#{person.city}" if person.full_name.include? person_name
      end
    end
    puts "#{person_name} ismi yok!"
  end
end
