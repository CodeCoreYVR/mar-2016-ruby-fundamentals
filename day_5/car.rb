require "./helper_methods.rb"
require "./greetings.rb"

class Car
  attr_accessor :name

  # The methods defined inside HelperMethods will be instance methods for the
  # Car class because we used `include`
  include HelperMethods
  # The methods defined inside Greetings will be class methods for the Car
  # class because we used `extend`
  extend Greetings
  include Greetings

  def initialize(model = "", type = "", capacity = 0)
    # @model, @type, @capacity = model, type, capacity
    @model = model
    @type = type
    @capacity = capacity
  end

  def details
    "Car details: model: #{@model.capitalize} / type: #{@type.capitalize} / capacity: #{@capacity}"
  end

  def self.max_speed
    200
  end

  def drive
    ignite_engine
    puts "Drive the damn thing"
  end

  def stop
    puts "Stop the car fool!"
  end

  def park
    puts "anywhere but here"
  end

  private

  def pump_gas
    puts "Unleaded only"
  end

  def ignite_engine
    puts "Started up"
  end
end
