class Money
  def initialize(amount)
    @amount = amount
  end

  attr_reader :amount

  def equal(dollar)
    return @amount == dollar.amount
  end
end
