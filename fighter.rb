class Fighter
	attr_reader :name
	attr_accessor :health, :power
	
	def initialize(name, health, power)
		@name = name
		@health = health
		@power = power
	end
	
	def attack(enemy)
		enemy.lose_health(self.power)
	end
	def lose_health(power_attacker)
		self.health -= power_attacker
	end
	
end

bob = Fighter.new("Bob", 100, 3)
rocky = Fighter.new("Rocky", 100, 65)

# p rocky.attack(bob)
# p bob
# p bob.attack(rocky)
# p rocky