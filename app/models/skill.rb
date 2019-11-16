class Skill < ApplicationRecord
    
    belongs_to :character, dependent: :destroy
    validates :name, presence: true, length: {maximum: 25}
    validates_inclusion_of :ability, in: [ "strength","dexterity", "constitution","inteligence","wisdom" ,"charisma"], presence: true


    def score
    end
    
end
