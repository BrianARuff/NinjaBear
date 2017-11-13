require_relative 'bear'
require_relative 'ninja'

class Battle
	attr_reader :fighter1, :fighter2
	
	def initialize (fighter1, fighter2)
		@fighter1 = fighter1
		@fighter2 = fighter2
	end

	def fight
		@fighter1.attack(@fighter2)
		@fighter2.attack(@fighter1)
		battle_status
		fight_narrative
	end

	def fight_narrative
		p "This is an epic battle for the ages. #{@fighter1.name} has shown great strength and tenacity. However, #{@fighter2.name} is even tougher. Only time will tell who will be victorious."
	end
	
	def battle_status
		p "#{@fighter1.name} has #{@fighter1.health} left."
		p "#{@fighter2.name} has #{@fighter2.health} left."
	end
end

bear = Bear.new("Berry", 100, 12)
ninja = Ninja.new("Nina", 120, 10)

battle = Battle.new(bear, ninja)

# p battle.fighter1.name
# p battle.fighter2.name

10.times do 
	(battle.fight)
end