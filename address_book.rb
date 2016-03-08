require 'csv'

class AddressBook
  def initialize(csv_path)
  	@people = []
  	CSV.foreach(csv_path, :headers => true) do |row|
  		@people << Person.new(id: row[0], full_name: row[1], phone_number: row[2] , city: row[3])
	end
  end

  def print_people
  	puts 'id,full_name,phone_number,city'
  	@people.each { |person| puts person }
  end

  def search_person(person_name)
  	@people.each { |person| puts person if person.full_name.include?(person_name) }
  end

end
