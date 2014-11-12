class Customer

  attr_reader :number
  attr_reader :name

  def initialize(name, number)
    @name   = name
    @number = number  
  end

end