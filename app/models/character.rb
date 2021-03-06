class Character < ApplicationRecord
    #  attr_reader :name, :strength, :dexterity, :constitution, :inteligence, :wisdom, :charisma
     has_many :skills,  dependent: :destroy

     validates :strength , presence: true, inclusion:{in: 1..20},  numericality: { only_integer: true }
     validates :dexterity, presence: true, inclusion:{in: 1..20},  numericality: { only_integer: true }
     
     validates :strength , presence: true, inclusion:{in: 1..20},  numericality: { only_integer: true }
     validates :dexterity, presence: true, inclusion:{in: 1..20},  numericality: { only_integer: true }
     
     validates :constitution , presence: true, inclusion:{in: 1..20},  numericality: { only_integer: true }
     validates :inteligence, presence: true, inclusion:{in: 1..20},  numericality: { only_integer: true }

     validates :wisdom , presence: true, inclusion:{in: 1..20},  numericality: { only_integer: true }
     validates :charisma, presence: true, inclusion:{in: 1..20},  numericality: { only_integer: true }

     validates :name, presence: true, length: {maximum: 25}

     scope :filter_strenght_greather_than, ->(int) {where('strength > ?', int) if int.present?}
     scope :filter_strength_less_than, ->(int) {where('strength < ?', int) if int.present?}

     scope :filter_dexterity_greather_than, ->(int) {where('dexterity > ?', int) if int.present?}
     scope :filter_dexterity_less_than, ->(int) {where('dexterity < ?',int) if int.present?}

     scope :filter_constitution_greather_than, ->(int) {where('constitution > ?', int) if int.present?}
     scope :filter_constitution_less_than, ->(int) {where('constitution < ?',int) if int.present?}

     scope :filter_inteligence_greather_than, ->(int) {where('inteligence > ?', int) if int.present?}
     scope :filter_inteligence_less_than, ->(int) {where('inteligence < ?',int) if int.present?}

     scope :filter_wisdom_greather_than, ->(int) {where('wisdom > ?', int) if int.present?}
     scope :filter_wisdom_less_than, ->(int) {where('wisdom < ?',int) if int.present?}

     scope :filter_charisma_greather_than, ->(int) {where('charisma > ?', int) if int.present?}
     scope :filter_charisma_less_than, ->(int) {where('charisma < ?',int) if int.present?}

     scope :filter_character_name, ->(string){where('name LIKE ?', "%#{string}%") if string.present?}


    def level
        values = (strength + dexterity + constitution + inteligence + wisdom + charisma )/ 6
        # values = values / 6
    end


    def proficient_bonus
        comparador = 4
        bonus = 2
        while comparador < level
            comparador += 4
            bonus += 1
        end
        bonus
    end


end
