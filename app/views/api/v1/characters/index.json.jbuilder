
json.characters @characters do |character|

  # character attributes to json
  json.id character.id
  json.name character.name


  # Nested skills
  json.skills character.skills do |skigit ll|
    json.name skill.name
    json.proficient skill.proficient
  end

end  