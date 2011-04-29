class Money
  def initialize(amount)
    @amount = amount
  end

  attr_reader :amount

  def equal(dollar)
    return @amount == dollar.amount && self.class == dollar.class
  end

  def self.dollar(dollar)
    return Dollar.new(dollar)
  end

  def self.franc(franc)
    return Franc.new(franc)
  end
end

class Dollar < Money
  def times(multiplier)
    return Dollar.new(@amount * multiplier)
  end
end

class Franc < Money
  def times(multiplier)
    return Franc.new(@amount * multiplier)
  end
end

