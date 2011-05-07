class Money
  def initialize(amount, currency)
    @amount   = amount
    @currency = currency
  end

  attr_reader :amount

  def equal(other)
    return @amount == other.amount && self.currency == other.currency
  end

  def self.dollar(dollar)
    return Money.new(dollar, 'USD')
  end

  def self.franc(franc)
    return Money.new(franc, 'CHF')
  end

  def currency
    return @currency
  end

  def times(multiplier)
    return Money.new(@amount * multiplier, @currency)
  end

  def plus(addend)
    return Money.new(@amount + addend.amount, @currency)
  end
end


