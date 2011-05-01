# -*- coding: utf-8 -*-
require 'rubygems'
require 'rspec'
require './money'

describe Money do
  it '5ドルと5CHFは同じではない' do
    Money.dollar(5).equal(Money.franc(5)).should be_false
  end

  describe Dollar do
    before do
      @five = Money.dollar(5);
    end
 
    it '@fiveを2倍にしたら10になる' do
      @five.times(2).equal(Dollar.new(10))
    end

    it '@fiveを3倍にしたら15になる' do
      @five.times(2)
      @five.times(3).equal(Dollar.new(15))
    end

    it '$5ドルと$5ドルは同じとなる' do
      @five.equal(Dollar.new(5)).should be_true
    end
    
    it '$5ドルと$6ドルは同じとならない' do
      @five.equal(Dollar.new(6)).should be_false
    end

    it '通貨単位はUSD' do
      @five.currency.should be_eql("USD")
    end
  end

  describe Franc do
    before do
      @five = Money.franc(5)
    end
    
    it '@fiveを2倍にしたら10になる' do
      @five.times(2).equal(Franc.new(10))
    end

    it '@fiveを3倍にしたら15になる' do
      @five.times(2)
      @five.times(3).equal(Franc.new(15))
    end

    it '$5francと$5francは同じとなる' do
      @five.equal(Franc.new(5)).should be_true
    end

    it '$5francと$6francは同じとならない' do
      @five.equal(Franc.new(6)).should be_false
    end

    it '通貨単位はCHF' do
      @five.currency.should be_eql("CHF")
    end
  end
end


