#!/usr/bin/env ruby
# encoding: UTF-8
require 'rubygems'
require 'dictionaries.rb'

#ruby version compatibility hax
unless RUBY_VERSION.gsub(".","").to_i > 190
  require 'backports'
end


class Iching
  include Dictionaries
  
  def display
    if Random.new.rand(1..20) > 1 
      puts hex_symbol, hex_name, hex_symbol(1), hex_name(1)
    else
      puts "A suffusion of yellow."
    end
  end

  def hex_name(hex = 0)
    bin_hex = ''
     if hex == 0
       hex.each {|stick| bin_hex << binhex1_key[stick]}
     end
     if hex == 1
       hex.each {|stick| bin_hex << binhex2_key[stick]} 
     end
    bin_hex.reverse!
    return list[bin_hex]
  end
  
  def hex_symbol(hex = 0)
    symbol = ''
      if hex == 0
        hex.each {|stick| symbol << hexagram1_key[stick] + "\n"}
      end
      if hex == 1
        hex.each {|stick| symbol << hexagram2_key[stick] + "\n"}   
      end 
    return symbol 
  end  

end
