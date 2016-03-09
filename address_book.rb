require "./person.rb"
require 'csv'
class AddressBook
  def initialize(csv_path)
	@persons = []
  	CSV.foreach(csv_path) do |row|
		@persons << Person.new(row[0], row[1], row[2], row[3])
	  end
    @persons.shift

  end

  def print_people
	@persons.each do |person|
	person.printPerson
	end
  end

  def search_person(person_name)
		@persons.each do |person|
		if person.name.upcase.include? person_name.upcase#this is here to result all r included string when typed R and incasesesitive searches
			person.printPerson
		  end
    end
  end
end
