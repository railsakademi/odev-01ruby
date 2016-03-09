class Person

 @personid = "0"
 @number = "num"
 @name = "name"
 @city = "city"
 attr_accessor :personid
 attr_accessor :city
 attr_accessor :name
 attr_accessor :number
	def initialize(id, name, num, city)
		@personid = id
		@number = num
		@name = name
		@city = city

	end
  def printPerson()
    puts("#{personid},#{name},#{number},#{city}")

  end

end
