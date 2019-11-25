# character attributes tojson
 json.id character.id
 json.name character.name
 json.strength character.strength
 json.dexterity character.dexterity
 json.constitution character.constitution
 json.inteligence character.inteligence
 json.wisdom character.wisdom
 json.charisma character.charisma
 json.level character.level
 json.proficient_bonus character.proficient_bonus



  # Nested skills
 json.skills character.skills do |skill|
   json.id skill.id
   json.name skill.name
   json.ability skill.ability
   json.score skill.score
   json.proficient skill.proficient

  end



