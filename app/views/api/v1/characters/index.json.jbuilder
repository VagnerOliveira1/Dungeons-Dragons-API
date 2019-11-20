
json.characters @characters do |character|

  # character attributes to json
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
    json.name skill.name
    json.ability skill.ability
    json.score skill.score
    json.proficient skill.proficient

  end

end  