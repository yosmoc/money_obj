# -*- coding: utf-8 -*-
require 'rubygems'
require 'rspec'
require './dollar'

describe Dollar do
  before do
    @five = Dollar.new(5);
  end

  it '@fiveを2倍にしたら10になる' do
    @five.times(2).should == 10
  end
end
