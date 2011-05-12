# -*- coding: utf-8 -*-
require 'rubygems'
require 'rspec'
require './money'

describe Money do
  it '5ドルと5CHFは同じではない' do
    Money.dollar(5).equal(Money.franc(5)).should be_false
  end

  before do
    @five_dollar = Money.dollar(5)
    @five_franc = Money.franc(5)
  end
 
  it '$5をを2倍にしたら$10になる' do
    @five_dollar.times(2).equal(Money.dollar(10))
  end
  
  it '$5を3倍にしたら$15になる' do
    @five_dollar.times(2)
    @five_dollar.times(3).equal(Money.dollar(15))
  end
  
  it '$5ドルと$5ドルは同じとなる' do
    @five_dollar.equal(Money.new(5, "USD")).should be_true
  end
  
  it '$5ドルと$6ドルは同じとならない' do
    @five_dollar.equal(Money.new(6, "USD")).should be_false
  end
  
  it '通貨単位はUSD' do
    @five_dollar.currency.should be_eql("USD")
  end

  it '$5 + $5 = $10' do
    bank = Bank.new()
    sum = @five_dollar.plus(@five_dollar)
    reduced = bank.reduce(sum, "USD")
    reduced.currency.should == Money.dollar(10).currency
  end
  
  it '5francを2倍にしたら10francになる' do
    @five_franc.times(2).equal(Money.franc(10))
  end
  
  it '5francを3倍にしたら15になる' do
    @five_franc.times(2)
    @five_franc.times(3).equal(Money.franc(15))
  end

  it '通貨単位はCHF' do
    @five_franc.currency.should be_eql("CHF")
  end
end
