#!/usr/bin/env ruby
require 'rubygems'
require 'backports'

class Iching
  def initialize()
    @hex = 6.times.map{ Random.new.rand(6..9) }.reverse  
    @list = {'111111'=> 'Force (乾 qián); The Creative; Possessing Creative Power & Skill','000000'=> 'Field (坤 kūn); The Receptive; Needing Knowledge & Skill; Do not force matters and go with the flow','100010'=> 'Sprouting (屯 zhūn); Difficulty at the Beginning,; Sprouting ','010001'=> 'Enveloping (蒙 méng); Youthful Folly; Detained,Enveloped and Inexperienced','111010'=> 'Attending (需 xū); Waiting; Uninvolvement (Wait for now),Nourishment ','010111'=> 'Arguing (訟 sòng); Conflict; Engagement in Conflict ','010000'=> 'Leading (師 shī); The Army; Bringing Together,Teamwork ','000010'=> 'Grouping (比 bǐ); Holding Together; Union ','111011'=> 'Small Accumulating (小畜 xiǎo chù); Small Taming; Accumulating Resources','110111'=> 'Treading (履 lǚ); Treading (Conduct); Continuing with Alertness','111000'=> 'Pervading (泰 tài); Peace; Pervading','000111'=> 'Obstruction (否 pǐ); Standstill; Stagnation','101111'=> 'Concording People (同人 tóng rén); Fellowship; Fellowship,Partnership','111101'=> 'Great Possessing (大有 dà yǒu); Great Possession; Independence,Freedom','001000'=> 'Humbling (謙 qiān); Modesty; Being Reserved,Refraining','000100'=> 'Providing-For (豫 yù); Enthusiasm; Inducement,New Stimulus','100110'=> 'Following (隨 suí); Following; Following','011001'=> 'Corrupting (蠱 gǔ); Work on the Decayed; Repairing','110000'=> 'Nearing (臨 lín); Approach; Approaching Goal,Arriving ','000011'=> 'Viewing (觀 guān); Contemplation; The Withholding','100101'=> 'Gnawing Bite (噬嗑 shì kè); Biting Through; Deciding','101001'=> 'Adorning (賁 bì); Grace; Embellishing','000001'=> 'Stripping (剝 bō); Splitting Apart; Stripping,Flaying','100000'=> 'Returning (復 fù); Return; Returning','100111'=> 'Without Embroiling (無妄 wú wàng); Innocence; Without Rashness','111001'=> 'Great Accumulating (大畜 dà chù); Great Taming; Accumulating Wisdom','100001'=> 'Swallowing (頤 yí); Mouth Corners; Seeking Nourishment','011110'=> 'Great Exceeding (大過 dà guò); Great Preponderance; Great Surpassing','010010'=> 'Gorge (坎 kǎn); The Abysmal Water; Darkness,Gorge','101101'=> 'Radiance (離 lí); The Clinging; Clinging,Attachment','001110'=> 'Conjoining (咸 xián); Influence; Attraction','011100'=> 'Persevering (恆 héng); Duration; Perseverance','001111'=> 'Retiring (遯 dùn); Retreat; Withdrawing','111100'=> 'Great Invigorating (大壯 dà zhuàng); Great Power; Great Boldness','000101'=> 'Prospering (晉 jìn); Progress; Expansion,Promotion','101000'=> 'Brightness Hiding (明夷 míng yí); Darkening of the Light; Brilliance Injured','101011'=> 'Dwelling People (家人 jiā rén); The Family; Family','110101'=> 'Polarising (睽 kuí); Opposition; Division,Divergence','001010'=> 'Limping (蹇 jiǎn); Obstruction; Halting,Hardship','010100'=> 'Taking-Apart (解 xiè); Deliverance; Liberation,Solution','110001'=> 'Diminishing (損 sǔn); Decrease; Decrease','100011'=> 'Augmenting (益 yì); Increase; Increase','111110'=> 'Parting (夬 guài); Breakthrough; Separation','011111'=> 'Coupling (姤 gòu); Coming to Meet; Encountering','000110'=> 'Clustering (萃 cuì); Gathering Together; Association,Companionship','011000'=> 'Ascending (升 shēng); Pushing Upward; Growing Upward','010110'=> 'Confining (困 kùn); Oppression; Exhaustion','011010'=> 'Welling (井 jǐng); The Well; Replenishing,Renewal','101110'=> 'Skinning (革 gé); Revolution; Abolishing the Old','011101'=> 'Holding (鼎 dǐng); The Cauldron; Establishing the New','100100'=> 'Shake (震 zhèn); Arousing; Mobilizing','001001'=> 'Bound (艮 gèn); The Keeping Still; Immobility','001011'=> 'Infiltrating (漸 jiàn); Development; Auspicious Outlook,Infiltration','110100'=> 'Converting The Maiden (歸妹 guī mèi); The Marrying Maiden; Marrying','101100'=> 'Abounding (豐 fēng); Abundance; Goal Reached,Ambition Achieved','001101'=> 'Sojourning (旅 lǚ); The Wanderer; Travel','011011'=> 'Ground (巽 xùn); The Gentle; Subtle Influence','110110'=> 'Open (兌 duì); The Joyous; Overt Influence','010011'=> 'Dispersing (渙 huàn); Dispersion; Dispersal','110010'=> 'Articulating (節 jié); Limitation; Discipline','110011'=> 'Centre Confirming (中孚 zhōng fú); Inner Truth; Staying Focused,Avoid Misrepresentation','001100'=> 'Small Exceeding (小過 xiǎo guò); Small Preponderance; Small Surpassing','101010'=> 'Already_Fording (既濟 jì jì); After Completion; Completion','010101'=> 'Not-Yet Fording (未濟 wèi jì); Before Completion; Incompletion'}
    @hexagram1_key = { 6 => '-- --', 7 => '-----', 8 => '-- --', 9 => '-----'}
    @hexagram2_key = { 6 => '-----', 7 => '-----', 8 => '-- --', 9 => '-- --'}
    @binhex1_key = { 6 => '0', 7 => '1', 8 => '0', 9 => '1'}
    @binhex2_key = { 6 => '1', 7 => '1', 8 => '0', 9 => '0'}
  end
  def display
    if Random.new.rand(1..20) > 1 
      puts hex_symbol
      puts hex_name
      puts hex_symbol(1)
      puts hex_name(1)
    else
      puts "A suffusion of yellow."
    end
  end
  def hex_name(hex = 0)
    bin_hex = ''
     if hex == 0
       @hex.each {|stick| bin_hex << @binhex1_key[stick]}
     end
     if hex == 1
       @hex.each {|stick| bin_hex << @binhex2_key[stick]} 
     end
    return @list[bin_hex]
  end
  def hex_symbol(hex = 0)
    symbol = ''
      if hex == 0
        @hex.each {|stick| symbol << @hexagram1_key[stick] + "\n"}
      end
      if hex == 1
        @hex.each {|stick| symbol << @hexagram2_key[stick] + "\n"}   
      end 
    return symbol 
  end  
end

Iching.new.display