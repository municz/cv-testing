require_relative './spec_helper'
require_relative './../character'

class Weapon
  attr_accessor :name
  attr_accessor :damage
  attr_accessor :durability

  def save!
  end
end

describe Character do
  before(:each) do
    FactoryGirl.lint
  end

  context 'new character' do
    before(:each) do
      @character = Character.new("Moje postava", 100)
    end

    it 'has name' do
      expect(@character.name).to eq "Moje postava"
    end

    it 'has lives' do
      expect(@character.life).to eq 100
    end
  end

  context 'with weapon' do
    before(:each) do
      @character = Character.new("Moje postava", 100)
      @weapon = double("Weapon", attributes_for(:weapon))
    end

    it 'has weapon' do
      @character.weapon = @weapon	
      expect(@character.weapon.name).to eq @weapon.name
    end
  end

  context 'fight' do
    before(:each) do
      @character = Character.new("Moje postava", 100)
      @character2 = Character.new("Nepritel", 100)
      @weapon = double("Weapon", attributes_for(:weapon))
      @weapon2 = double("Weapon", attributes_for(:weapon))

      p @weapon.damage
    end

    it 'attacks' do
      @character.weapon = @weapon	
      @character2.weapon = @weapon2
      @character2.is_attacked(@character)
      expect(@character2.life).to eq 100 - 10
    end
  end
end
