class Dollar
  def initialize(amount)
    @amount = amount
  end

  attr_reader :amount

  def times(multiplier)
    return Dollar.new(@amount * multiplier)
  end

  def equal(dollar)
    return @amount == dollar.amount
  end
end
