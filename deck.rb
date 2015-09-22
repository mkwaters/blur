class Card
	attr_accessor :rank, :suit
	
	def initialize(rank, suit)
		@rank = rank
		@suit = suit
	end

	def output_card
		puts "#{self.rank} of #{self.suit}" 
	end
end

class Deck

	def initialize
		@cards = [ ]
		@ranks = ["Ace",2,3,4,5,6,7,8,9,10, "Jack", "Queen", "King"]

		@diamonds = @ranks.collect do |rank| 
			Card.new(rank, :diamonds)
		end
		@cards << @diamonds

		@spades = @ranks.collect do |rank| 
			Card.new(rank, :spades)
		end
		@cards << @spades

		@clubs = @ranks.collect do |rank| 
			Card.new(rank, :clubs)
		end
		@cards << @clubs

		@hearts = @ranks.collect do |rank| 
			Card.new(rank, :hearts)
		end
		@cards << @hearts
	end

	def shuffle
		@cards.shuffle!
	end

	def deal
		top_card = @cards.shift
		puts "#{top_card.rank} of #{top_card.suit}"	
	end
end

deck = Deck.new
deck.shuffle
deck.deal
