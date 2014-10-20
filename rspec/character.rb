class Character
  attr_accessor :name
  attr_accessor :life
  attr_accessor :weapon

  def initialize(name, life)
    @weapon = nil
    @name = name
    @life = life
  end

  def is_attacked(character)
    @life -= character.weapon.damage
  end
end
