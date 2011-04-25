# -*- coding: utf-8 -*-
require 'rubygems'
require 'rspec'
require './dollar'

describe Dollar do
  before do
    @five = Dollar.new(5);
    @five_ = Dollar.new(5)
  end

  it '@fiveを2倍にしたら10になる' do
    @five.times(2).amount.should == 10
  end

  it '@fiveを3倍にしたら15になる' do
    @five.times(2)
    @five.times(3).amount.should == 15
  end

  it '$5ドルと$5ドルは同じとなる' do
    @five.equal(@five_)
  end
end
