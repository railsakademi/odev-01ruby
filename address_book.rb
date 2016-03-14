require "./person.rb"
require 'csv'
class AddressBook
    attr_accessor :people 
    def initialize(csv_path)
        @book = []
        CSV.foreach(csv_path) do |row|
            @book << Person.new(row[0],row[1],row[2],row[3])
        end
    end
    def print_people
        @book.each do |person|
            puts "# #{person.id},#{person.full_name},#{person.phone_number},#{person.city}"
        end
    end
    def search_person(person_name)
        @book.each do |person|
            if person.full_name.include? person_name
                puts "#{person.id},#{person.full_name},#{person.phone_number},#{person.city}" 
            end
        end
    end
end
