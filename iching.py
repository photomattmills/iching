#!/usr/bin/env python
# -*- coding: iso-8859-15-*-
import math, random 
a = []
b = []
dec = {6: '-- --', 7: '-----', 8: '-- --', 9: '-----'}
dec_a = {6:'^',7:'|',8:'^',9:'|'}
dec2 = {6: '-----', 7: '-----', 8: '-- --', 9: '-- --'}
dec2_b = {6:'|',7:'|',8:'^',9:'^'}
names = {
'||||||': 'Force (乾 qián); The Creative; Possessing Creative Power & Skill', 
'^^^^^^': 'Field (坤 kūn); The Receptive; Needing Knowledge & Skill; Do not force matters and go with the flow',
'|^^^|^': 'Sprouting (屯 zhūn); Difficulty at the Beginning,; Sprouting ',
'^|^^^|': 'Enveloping (蒙 méng); Youthful Folly; Detained, Enveloped and Inexperienced',
'|||^|^': 'Attending (需 xū); Waiting; Uninvolvement (Wait for now), Nourishment ',
'^|^|||': 'Arguing (訟 sòng); Conflict; Engagement in Conflict ',
'^|^^^^': 'Leading (師 shī); The Army; Bringing Together, Teamwork ',
'^^^^|^': 'Grouping (比 bǐ); Holding Together; Union ',
'|||^||': 'Small Accumulating (小畜 xiǎo chù); Small Taming; Accumulating Resources',
'||^|||': 'Treading (履 lǚ); Treading (Conduct); Continuing with Alertness',
'|||^^^': 'Pervading (泰 tài); Peace; Pervading',
'^^^|||': 'Obstruction (否 pǐ); Standstill; Stagnation',
'|^||||': 'Concording People (同人 tóng rén); Fellowship; Fellowship, Partnership',
'||||^|': 'Great Possessing (大有 dà yǒu); Great Possession; Independence, Freedom',
'^^|^^^': 'Humbling (謙 qiān); Modesty; Being Reserved, Refraining',
'^^^|^^': 'Providing-For (豫 yù); Enthusiasm; Inducement, New Stimulus',
'|^^||^': 'Following (隨 suí); Following; Following',
'^||^^|': 'Corrupting (蠱 gǔ); Work on the Decayed; Repairing',
'||^^^^': 'Nearing (臨 lín); Approach; Approaching Goal, Arriving ',
'^^^^||': 'Viewing (觀 guān); Contemplation; The Withholding',
'|^^|^|': 'Gnawing Bite (噬嗑 shì kè); Biting Through; Deciding',
'|^|^^|': 'Adorning (賁 bì); Grace; Embellishing',
'^^^^^|': 'Stripping (剝 bō); Splitting Apart; Stripping, Flaying',
'|^^^^^': 'Returning (復 fù); Return; Returning',
'|^^|||': 'Without Embroiling (無妄 wú wàng); Innocence; Without Rashness',
'|||^^|': 'Great Accumulating (大畜 dà chù); Great Taming; Accumulating Wisdom',
'|^^^^|': 'Swallowing (頤 yí); Mouth Corners; Seeking Nourishment',
'^||||^': 'Great Exceeding (大過 dà guò); Great Preponderance; Great Surpassing',
'^|^^|^': 'Gorge (坎 kǎn); The Abysmal Water; Darkness, Gorge',
'|^||^|': 'Radiance (離 lí); The Clinging; Clinging, Attachment',
'^^|||^': 'Conjoining (咸 xián); Influence; Attraction',
'^|||^^': 'Persevering (恆 héng); Duration; Perseverance',
'^^||||': 'Retiring (遯 dùn); Retreat; Withdrawing',
'||||^^': 'Great Invigorating (大壯 dà zhuàng); Great Power; Great Boldness',
'^^^|^|': 'Prospering (晉 jìn); Progress; Expansion, Promotion',
'|^|^^^': 'Brightness Hiding (明夷 míng yí); Darkening of the Light; Brilliance Injured',
'|^|^||': 'Dwelling People (家人 jiā rén); The Family; Family',
'||^|^|': 'Polarising (睽 kuí); Opposition; Division, Divergence',
'^^|^|^': 'Limping (蹇 jiǎn); Obstruction; Halting, Hardship',
'^|^|^^': 'Taking-Apart (解 xiè); Deliverance; Liberation, Solution',
'||^^^|': 'Diminishing (損 sǔn); Decrease; Decrease',
'|^^^||': 'Augmenting (益 yì); Increase; Increase',
'|||||^': 'Parting (夬 guài); Breakthrough; Separation',
'^|||||': 'Coupling (姤 gòu); Coming to Meet; Encountering',
'^^^||^': 'Clustering (萃 cuì); Gathering Together; Association, Companionship',
'^||^^^': 'Ascending (升 shēng); Pushing Upward; Growing Upward',
'^|^||^': 'Confining (困 kùn); Oppression; Exhaustion',
'^||^|^': 'Welling (井 jǐng); The Well; Replenishing, Renewal',
'|^|||^': 'Skinning (革 gé); Revolution; Abolishing the Old',
'^|||^|': 'Holding (鼎 dǐng); The Cauldron; Establishing the New',
'|^^|^^': 'Shake (震 zhèn); Arousing; Mobilizing',
'^^|^^|': 'Bound (艮 gèn); The Keeping Still; Immobility',
'^^|^||': 'Infiltrating (漸 jiàn); Development; Auspicious Outlook, Infiltration',
'||^|^^': 'Converting The Maiden (歸妹 guī mèi); The Marrying Maiden; Marrying',
'|^||^^': 'Abounding (豐 fēng); Abundance; Goal Reached, Ambition Achieved',
'^^||^|': 'Sojourning (旅 lǚ); The Wanderer; Travel',
'^||^||': 'Ground (巽 xùn); The Gentle; Subtle Influence',
'||^||^': 'Open (兌 duì); The Joyous; Overt Influence',
'^|^^||': 'Dispersing (渙 huàn); Dispersion; Dispersal',
'||^^|^': 'Articulating (節 jié); Limitation; Discipline',
'||^^||': 'Centre Confirming (中孚 zhōng fú); Inner Truth; Staying Focused, Avoid Misrepresentation',
'^^||^^': 'Small Exceeding (小過 xiǎo guò); Small Preponderance; Small Surpassing',
'|^|^|^': 'Already_Fording (既濟 jì jì); After Completion; Completion', 
'^|^|^|': 'Not-Yet Fording (未濟 wèi jì); Before Completion; Incompletion'}
hexone = []
yellow = random.randint(0,100)
if yellow>95:
	print 'A suffusion of yellow.'
else:
	for n in range (0,6):
		hexone.append(random.randint (6,9))
	hexone.reverse
	hextwo = hexone
	print 'Hexagram One:'

	for n in hexone:
		a.append(dec_a[n])
		print dec[n]
	
	d = "".join(a)
	e = d[::-1]
	print names[e]
	print 'Hexagram Two:'

	for n in hextwo:
		b.append(dec2_b[n])
		print dec2[n]
	g = b[::-1]
	c = "".join(g)
	print names[c]
