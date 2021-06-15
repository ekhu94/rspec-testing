class Player
  
  # getter/setter for name
  attr_accessor :name
  # normal getter for age
  attr_reader :age
  
  def initialize(name, age)
    @name = name
    @age = age
  end
  
end