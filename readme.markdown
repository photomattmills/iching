# I Ching

This is a little program to cast I Ching hexagrams that I knocked together when I was first learning python, and have since improved at intervals when I was bored, and then I ported it to ruby, so you can use the class to get stuff about the hexagram, and use it in your awesome projects too. It depends on the backports gem for the random number generation, because I liked the way the new Random class from 1.9 works. 

## Installation

		gem install backports
		gem install iching
		
## Usage
There are class methods for accessing the symbol and the name of each hexagram, and also for displaying everything at once. It doesn't do much else right now. If you have any ideas, wants, or needs, let me know. 