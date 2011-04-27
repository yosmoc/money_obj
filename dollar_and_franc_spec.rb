# -*- coding: utf-8 -*-
require 'rubygems'
require 'rspec'
require './dollar'
require './franc'

describe Dollar do
  it '5ドルと5CHFは同じではない' do
    Dollar.new(5).equal(Franc.new(5)).should be_false
  end
end
