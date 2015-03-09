# encoding: UTF-8
require 'rubygems'
require 'dictionaries.rb'

class Iching
  include Dictionaries

  def display
    if Random.new.rand(1..20) > 1
      puts hex_symbol, hex_name, hex_symbol(2), hex_name(2)
    else
      puts "A suffusion of yellow."
    end
  end

  def hex_name(second = false)
    unless second
      bin_hex = hex.inject('') {|store,stick| store << binhex1_key[stick]}
    else
      bin_hex = hex.inject('') {|store,stick| store << binhex1_key[stick]}
    end
    bin_hex.reverse!
    return list[bin_hex]
  end

  def hex_symbol(second = false)
    unless second
      hex.inject('') {|store, stick| store << hexagram1_key[stick] + "\n"}
    else
      hex.inject('') {|store, stick| store << hexagram2_key[stick] + "\n"}
    end
  end

end
