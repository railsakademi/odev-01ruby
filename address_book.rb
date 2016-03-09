require 'csv'

class AddressBook
	attr_accessor :people
  def initialize(csv_path)
  	@people = CSV.read(csv_path)[1..-1]
  end

  def print_people
  	@people.each do |p|
  		puts p.join(',')
  	end
  end

  def search_person(person_name)
  	puts @people.find{|p| p[1].include?person_name}.join(',')
  end
end
