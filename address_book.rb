require 'csv'

class AddressBook
	def initialize(csv_path)
  	#Read CSV File
  	@people = CSV.read(csv_path)
	end

	def print_people
	 	@people.each do |person|
	  	puts person[0] + " " + person[1] + " " + person[2] + " " + person[3]
	  end
	end

  def search_person(person_name)
  	@people.each do |person|
  		if person[1].include?(person_name)
  			puts person[0]
  		end
  	end
  end
end
