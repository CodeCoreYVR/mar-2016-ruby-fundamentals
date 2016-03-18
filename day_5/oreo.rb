require "./cookie.rb"

# Oreo class inherits from the Cookie class.
# We call Oreo: subclass or  child class
# we call Cookie: superclass or parent class
# Oreo will be identical to Cookie if you put nothing inside it
class Oreo < Cookie
  attr_accessor :filling_type, :filling_amount

  # this overrides (redefines) the detais method for the Oreo objects
  def details
    # super will call the method with the same name (in this case `details`)
    # in the parent class (in this case Cookie)
    puts super
    puts eat
    "This #{filling_type} Oreo Cookie has #{filling_amount} filling amount."
  end

end
