require './money'

class Dollar < Money
  def times(multiplier)
    return Dollar.new(@amount * multiplier)
  end

  def equal(dollar)
    return @amount == dollar.amount
  end
end
