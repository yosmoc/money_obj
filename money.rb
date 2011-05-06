class Money
  def initialize(amount, currency)
    @amount   = amount
    @currency = currency
  end

  attr_reader :amount

  def equal(dollar)
    return @amount == dollar.amount && self.class == dollar.class
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
end

class Dollar < Money
  def times(multiplier)
    return Dollar.new(@amount * multiplier, "USD")
  end
end

class Franc < Money
  def times(multiplier)
    return Franc.new(@amount * multiplier, "CHF")
  end
end

