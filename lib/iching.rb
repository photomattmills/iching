#!/usr/bin/env ruby
require 'rubygems'
require 'backports'
class Iching
  def initialize()
    @hex = 6.times.map{ Random.new.rand(6..9) }.reverse  
    @list = {'111111'=> '1. Force (乾 qián); The Creative; Possessing Creative Power & Skill','000000'=> '2. Field (坤 kūn); The Receptive; Needing Knowledge & Skill; Do not force matters and go with the flow','100010'=> '3. Sprouting (屯 zhūn); Difficulty at the Beginning,; Sprouting ','010001'=> '4. Enveloping (蒙 méng); Youthful Folly; Detained,Enveloped and Inexperienced','111010'=> '5. Attending (需 xū); Waiting; Uninvolvement (Wait for now),Nourishment ','010111'=> '6. Arguing (訟 sòng); Conflict; Engagement in Conflict ','010000'=> '7. Leading (師 shī); The Army; Bringing Together,Teamwork ','000010'=> '8. Grouping (比 bǐ); Holding Together; Union ','111011'=> '9. Small Accumulating (小畜 xiǎo chù); Small Taming; Accumulating Resources','110111'=> '10. Treading (履 lǚ); Treading (Conduct); Continuing with Alertness','111000'=> '11. Pervading (泰 tài); Peace; Pervading','000111'=> '12. Obstruction (否 pǐ); Standstill; Stagnation','101111'=> '13. Concording People (同人 tóng rén); Fellowship; Fellowship,Partnership','111101'=> '14. Great Possessing (大有 dà yǒu); Great Possession; Independence,Freedom','001000'=> '15. Humbling (謙 qiān); Modesty; Being Reserved,Refraining','000100'=> '16. Providing-For (豫 yù); Enthusiasm; Inducement,New Stimulus','100110'=> '17. Following (隨 suí); Following; Following','011001'=> '18. Corrupting (蠱 gǔ); Work on the Decayed; Repairing','110000'=> '19. Nearing (臨 lín); Approach; Approaching Goal,Arriving ','000011'=> '20. Viewing (觀 guān); Contemplation; The Withholding','100101'=> '21. Gnawing Bite (噬嗑 shì kè); Biting Through; Deciding','101001'=> '22. Adorning (賁 bì); Grace; Embellishing','000001'=> '23. Stripping (剝 bō); Splitting Apart; Stripping,Flaying','100000'=> '24. Returning (復 fù); Return; Returning','100111'=> '25. Without Embroiling (無妄 wú wàng); Innocence; Without Rashness','111001'=> '26. Great Accumulating (大畜 dà chù); Great Taming; Accumulating Wisdom','100001'=> '27. Swallowing (頤 yí); Mouth Corners; Seeking Nourishment','011110'=> '28. Great Exceeding (大過 dà guò); Great Preponderance; Great Surpassing','010010'=> '29. Gorge (坎 kǎn); The Abysmal Water; Darkness,Gorge','101101'=> '30. Radiance (離 lí); The Clinging; Clinging,Attachment','001110'=> '31. Conjoining (咸 xián); Influence; Attraction','011100'=> '32. Persevering (恆 héng); Duration; Perseverance','001111'=> '33. Retiring (遯 dùn); Retreat; Withdrawing','111100'=> '34. Great Invigorating (大壯 dà zhuàng); Great Power; Great Boldness','000101'=> '35. Prospering (晉 jìn); Progress; Expansion,Promotion','101000'=> '36. Brightness Hiding (明夷 míng yí); Darkening of the Light; Brilliance Injured','101011'=> '37. Dwelling People (家人 jiā rén); The Family; Family','110101'=> '38. Polarising (睽 kuí); Opposition; Division,Divergence','001010'=> '39. Limping (蹇 jiǎn); Obstruction; Halting,Hardship','010100'=> '40. Taking-Apart (解 xiè); Deliverance; Liberation,Solution','110001'=> '41. Diminishing (損 sǔn); Decrease; Decrease','100011'=> '42. Augmenting (益 yì); Increase; Increase','111110'=> '43. Parting (夬 guài); Breakthrough; Separation','011111'=> '44. Coupling (姤 gòu); Coming to Meet; Encountering','000110'=> '45. Clustering (萃 cuì); Gathering Together; Association,Companionship','011000'=> '46. Ascending (升 shēng); Pushing Upward; Growing Upward','010110'=> '47. Confining (困 kùn); Oppression; Exhaustion','011010'=> '48. Welling (井 jǐng); The Well; Replenishing,Renewal','101110'=> '49. Skinning (革 gé); Revolution; Abolishing the Old','011101'=> '50. Holding (鼎 dǐng); The Cauldron; Establishing the New','100100'=> '51. Shake (震 zhèn); Arousing; Mobilizing','001001'=> '52. Bound (艮 gèn); The Keeping Still; Immobility','001011'=> '53. Infiltrating (漸 jiàn); Development; Auspicious Outlook,Infiltration','110100'=> '54. Converting The Maiden (歸妹 guī mèi); The Marrying Maiden; Marrying','101100'=> '55. Abounding (豐 fēng); Abundance; Goal Reached,Ambition Achieved','001101'=> '56. Sojourning (旅 lǚ); The Wanderer; Travel','011011'=> '57. Ground (巽 xùn); The Gentle; Subtle Influence','110110'=> '58. Open (兌 duì); The Joyous; Overt Influence','010011'=> '59. Dispersing (渙 huàn); Dispersion; Dispersal','110010'=> '60. Articulating (節 jié); Limitation; Discipline','110011'=> '61. Centre Confirming (中孚 zhōng fú); Inner Truth; Staying Focused,Avoid Misrepresentation','001100'=> '62. Small Exceeding (小過 xiǎo guò); Small Preponderance; Small Surpassing','101010'=> '63. Already_Fording (既濟 jì jì); After Completion; Completion','010101'=> '64. Not-Yet Fording (未濟 wèi jì); Before Completion; Incompletion'}
    @hexagram1_key = { 6 => '-- --', 7 => '-----', 8 => '-- --', 9 => '-----'}
    @hexagram2_key = { 6 => '-----', 7 => '-----', 8 => '-- --', 9 => '-- --'}
    @binhex1_key = { 6 => '0', 7 => '1', 8 => '0', 9 => '1'}
    @binhex2_key = { 6 => '1', 7 => '1', 8 => '0', 9 => '0'}
  end
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
       @hex.each {|stick| bin_hex << @binhex1_key[stick]}
     end
     if hex == 1
       @hex.each {|stick| bin_hex << @binhex2_key[stick]} 
     end
    bin_hex.reverse!
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