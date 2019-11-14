class Character < ApplicationRecord
     has_many :skills
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
    end


    def proficient_bonus

    end


end
