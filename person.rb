class Person
  attr_accessor :id
  attr_accessor :full_name
  attr_accessor :phone_number
  attr_accessor :city

  def initialize(id, full_name, phone_number, city)
    @id = id
    @full_name = full_name
    @phone_number = phone_number
    @city = city
  end
end
