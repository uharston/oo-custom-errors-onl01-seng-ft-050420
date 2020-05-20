class Person
  attr_accessor :partner, :name

  def initialize(name)
    @name = name
  end

  def get_married(person)
    self.partner = person
    person.partner = self
  end

end

beyonce = Person.new("Beyonce")
jay_z = Person.new("Jay-Z")
beyonce.get_married(jay_z)
# beyonce.get_married("Jay-Z")
puts beyonce.name
