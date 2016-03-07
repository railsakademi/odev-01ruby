require 'csv'

class AddressBook

  @people = Array.new

  def initialize(csv_path)
    @people = CSV.read(csv_path)
  end

  def print_people
    @people.each do |person|
      print person
      puts
    end
  end

  def search_person(person_name)
    if @people.include?(person_name)
      puts "bulundu"
      return 1
    else
      puts "bulunamadı"
    end
  end
end
