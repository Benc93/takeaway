class Order

  attr_reader :contents

  def initialize
    @contents = []
  end

  def add(line_item)
    @contents << line_item
  end

  def price
    contents.inject(0) {|sum, line_item| sum + line_item.total}
  end

  def include_customer(customer)
    @customer = customer
  end

  def count
    @contents.count
  end

end