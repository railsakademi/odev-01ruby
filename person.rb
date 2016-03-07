class Person
    attr_accessor :id, :full_name, :phone_number, :city

    def initialize(id, fullName, phoneName, city)
        @id = id
        @full_name = fullName
        @phone_number = phoneName
        @city = city
    end
end
