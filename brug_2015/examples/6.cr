class Animal
  getter type # attr_reader
  setter name # attr_writer
  property age # attr_accessor

  def initialize(@type, @name, @age)
  end

  private def my_private_method
    # stuff
  end

  protected def my_protected_method
    # stuff
  end
end

animal = Animal.new("dog", "Bobik", 3)
puts animal.inspect
puts animal.type

animal.name = "Sharik"
puts animal.inspect

puts animal.age
animal.age = 2
puts animal.age