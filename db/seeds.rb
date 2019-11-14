# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

    vagner = Character.create({
     "name":"Vagner",
      "strength":1,
      "dexterity":3,
      "constitution":4,
      "inteligence":5,
      "wisdom":3,
     "charisma":3
    })
    vagner.skills.create(name:"teste",ability:"teste",proficient:true)

    personagem = Character.create({
     "name":"OUTRO",
      "strength":0,
      "dexterity":0,
      "constitution":40,
      "inteligence":50,
      "wisdom":30,
     "charisma":30
    })
    personagem.skills.create(name:"teste",ability:"teste",proficient:true)