class Money
  def initialize(amount)
    @amount = amount
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
end

class Dollar < Money
  def initialize(amount, currency)
    @amount   = amount
    @currency = currency
  end

  def currency
    return @currency
  end

  def times(multiplier)
    return Dollar.new(@amount * multiplier, nil)
  end
end

class Franc < Money
  def initialize(amount, currency)
    @amount   = amount
    @currency = currency
  end

  def currency
    return @currency
  end

  def times(multiplier)
    return Franc.new(@amount * multiplier, nil)
  end
end

