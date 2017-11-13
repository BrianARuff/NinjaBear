require_relative 'fighter'

class Ninja < Fighter
	def initialize(name, health, power)
		super(name, health, power)
	end

	def attack(enemy)
		p "I'm the golden child."
		enemy.lose_health(self.power)
	end
end

ninja = Ninja.new("Kevin", 5000, 1)
bear = Fighter.new("Stacie", 100, 80)