class Person
  attr_accessor :id, :full_name, :phone_number, :city #Getter Setter
  def initialize(id,full_name,phone_number,city) #Constructor
    @id = id
    @full_name = full_name
    @phone_number = phone_number
    @city = city
  end
end
