require 'csv'
class AddressBook
  
  def initialize(csv_path)
    @csv_path = csv_path
  end

  def print_people
    CSV.foreach(@csv_path) do |row|
      print row.to_csv
    end
  end

  def search_person(person_name)
    CSV.foreach(@csv_path) do |row|
       print row.to_csv if person_name == row[1].split(" ")[0]
    end
  end

end
