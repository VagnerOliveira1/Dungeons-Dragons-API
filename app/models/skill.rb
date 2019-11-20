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
        compara = 1
        modifica = -5
        while compara < valor 
           modifica += 1
           compara += 2
        end
        modifica
    end

    def score
       if self.proficient
            return modificador + character.proficient_bonus
       else
            modificador
       end
    end

    
end
