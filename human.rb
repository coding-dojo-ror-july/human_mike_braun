class Human
    attr_accessor :strength, :intelligence, :stealth, :health

    def initialize
        @strength = 3
        @intelligence = 3
        @stealth = 3
        @health = 100
    end

    def attack (obj)
        if obj.class.ancestors.include?(Human)
            obj.health -= 3
            true
        else
            false
        end
    end
end

Fighter = Human.new
Wizard = Human.new
Cleric = Human.new
Rogue = Human.new
puts Fighter.attack(Rogue)
puts Fighter.attack("A rock!")
puts Rogue.health