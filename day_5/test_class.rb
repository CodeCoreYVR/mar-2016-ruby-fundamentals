class TestClass

  attr_accessor :name
  attr_accessor :age


  def set_all(name, age)
    self.name = name
    self.age  = age
  end

  def details
    puts "Hello #{name}"
  end


end
