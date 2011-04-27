# -*- coding: utf-8 -*-
require 'rubygems'
require 'rspec'
require './dollar'

describe Dollar do
  before do
    @five = Dollar.new(5);
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
end
