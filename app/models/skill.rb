class Skill < ApplicationRecord
    belongs_to :character, dependent: :destroy
    validates :name, presence: true, length: {maximum: 25}

    validates_inclusion_of :ability, in: [ "strength","dexterity", "constitution","inteligence","wisdom" ,"charisma"], presence: true


    def atributo_equivalente
           if Character.column_names.include?self.ability 
             self.ability   
           end
       
    end

    def modificador
        valor = character.read_attribute(atributo_equivalente)
        case valor
        when 1 then -5 
        when 2..3 then -4
        when 4..5 then -3
        when 6..7 then -2
        when 8..9 then -1
        when 10..11 then 0
        when 12..13 then 1
        when 14..15 then 2
        when 16..17 then 3
        when 18..19 then 4
        when 20 then 5
        else 
        end

    end

    def score
       if self.proficient
            return modificador + character.proficient_bonus
       else
            modificador
       end
    end

    
end
