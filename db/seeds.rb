# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Machine.create([
  {name: "Prusa MK3", type: "FDM"},
  {name: "Makerbot", type: "FDM"},
  {name: "Ultimaker 2+", type: "FDM"},
  {name: "Formlabs Form 3", type: "UV Resin"}
])