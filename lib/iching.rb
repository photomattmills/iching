# encoding: UTF-8
require 'dictionaries.rb'

class Iching
  def hex
    @hex ||= 6.times.map{ Random.new.rand(6..9) }.reverse
  end

  def display
    # puts "A suffusion of yellow." && return if Random.new.rand(1..20) <= 1
    hex1 = Hex1.new(hex)
    hex2 = Hex2.new(hex)
    puts hex1.hex_symbol, hex1.hex_name, hex2.hex_symbol, hex2.hex_name
  end

end

class Hex
  include ::Dictionaries

  attr_reader :hex

  def initialize(hex)
    @hex = hex
  end

  def hex_symbol
    hex.map{|n| hexagram_key[n] }.join("\n")
  end

  def hex_name
    hex_binary = hex.map{|n| bin_hex_key[n]}.join("").reverse()
    return list[hex_binary]
  end
end

class Hex1 < Hex
  def bin_hex_key
    { 6 => '0', 7 => '1', 8 => '0', 9 => '1'}
  end

  def hexagram_key
    { 6 => '-- --', 7 => '-----', 8 => '-- --', 9 => '-----'}
  end
end

class Hex2 < Hex
  def bin_hex_key
    { 6 => '1', 7 => '1', 8 => '0', 9 => '0'}
  end

  def hexagram_key
    { 6 => '-----', 7 => '-----', 8 => '-- --', 9 => '-- --'}
  end
end
