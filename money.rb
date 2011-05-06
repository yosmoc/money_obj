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
    return Dollar.new(dollar, 'USD')
  end

  def self.franc(franc)
    return Franc.new(franc, 'CHF')
  end

  def currency
    return @currency
  end

  def times(multiplier)
    return Money.new(@amount * multiplier, @currency)
  end
end

class Dollar < Money
end

class Franc < Money
end

