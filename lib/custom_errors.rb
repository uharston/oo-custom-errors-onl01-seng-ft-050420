class Person
  attr_accessor :partner, :name

  def initialize(name)
    @name = name
  end

  def get_married(person)
    self.partner = person
    if person.class != Person
      raise BootyError
    else 
    person.partner = self
  end 
  end
  class BootyError < StandardError
   end
end

beyonce = Person.new("Beyonce")
# jay_z = Person.new("Jay-Z")
# beyonce.get_married(jay_z)
 beyonce.get_married("Jay-Z")
puts beyonce.name
