class Skill < ApplicationRecord
    
    belongs_to :character, dependent: :destroy

    def score
    end
    
end
