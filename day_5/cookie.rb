require "./helper_methods.rb"

# we use the `class` keyword to create a class in Ruby.
# Ruby class names must start with a capital letter (Constants)
# Convention for naming Ruby classes: CamelCase
# first_name # snake case
# FirstName  # camel case
class Cookie

  attr_accessor :name
  include HelperMethods

  MAX_SUGAR = 10

  def initialize(sugar_amount = 0, flour_amount = 0)
    @sugar = sugar_amount
    @flour = flour_amount
  end

  attr_reader :sugar
  # is equivalent to:
  # def sugar
  #   @sugar
  # end

  # def set_sugar(amount)
  #   @sugar = amount
  # end

  attr_writer :sugar
  # is equivalent to:
  # def sugar=(amount)
  #   @sugar = amount
  # end

  attr_accessor :flour
  # is equivalent to:
  # attr_reader :flour
  # attr_writer :flour


  def details
    "This cookie has #{@sugar}g of sugar and #{@flour}g of flour"
  end

  # this defines a class method called `info` it's the same as writing:
  # def Cookie.info
  # you call method without instantiating an object:
  # Cookie.info
  def self.info
    "I'm the Cookie class!"
  end

  # this is a public method. This means it can be called from instance methods within
  # this class as well instances of the Class defined outside (such as irb)
  def eat(name = "")
    @number = rand(100)
    "#{name}: Nom..Nom!"
  end

  def bake_and_eat
    puts @number
    # puts self
    # we can use self to reference the object that you're calling this method
    # on. If you're calling another instance method, then using self is
    # redundant.
    # puts self.bake
    puts bake
    puts eat
  end

  private

  # This defines an instance (or object) method
  # it means that you will need to create an object first to call this method
  # for instance:
  # c = Cookie.new
  # c.bake
  # this is a private method because it's defined after the `private` keyword
  # this method can only be called from other public or private methods in this class
  def bake
    "Eating the cookie!"
  end

end
