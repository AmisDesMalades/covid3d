# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Member.create([
  { first_name: "Jérémy", last_name: "Adam", job: "fabricant", email: "jeremy.adam@bone3d.fr" },
  { first_name: "Jean-Pierre", last_name: "Attal", job: "odontologiste", email: "jean-pierre.attal@parisdescartes.fr" },
  { first_name: "Thomas", last_name: "Baugnon", job: "DGOS", email: "jean-pierre.attal@parisdescartes.fr" },
  { first_name: "Jean-Pierre", last_name: "Attal", job: "odontologiste", email: "jean-pierre.attal@parisdescartes.fr" },
])

# Supplier.create([
#   {name: "Quantum Weasels", location: "[123, 546]", full_address: "12, rue de Rivoli", phone: "0612345678", category: "individual", production_capacity: "2", available: "true"},
#   {name: "Brocéliande Wizards", location: "[132, 546]", full_address: "12, rue de Sevres", phone: "0612345678", category: "company", production_capacity: "10", available: "false"},
# ])

# Machine.create([
#   {name: "Prusa MK3", brand: "Prusa", category: "FDM"},
#   {name: "Replicator 2", brand: "Makerbot", category: "FDM"},
#   {name: "Ultimaker 2+", brand: "Ultimaker", category: "FDM"},
#   {name: "Form 3", brand: "Formlabs", category: "UV Resin"}
# ])

# Product.create([
#   {name: "Visière PRUSA", category: "PPE", validated: true, link: "https://www.prusaprinters.org/prints/25857-protective-face-shield-rc1"},
#   {name: "Visière Laser", category: "PPE", validated: true, link: "https://hackaday.io/project/170481-laser-cut-medical-shield"},
#   {name: "Masque FPP2", category: "PPE", validated: false, link: "https://www.opensourcemask.com/en/"},
#   {name: "Respirator Valve", category: "Hospital parts", validated: true, link: ""},
#   {name: "No contact handles", category: "Hospital parts", validated: true, link: ""}
# ])

Hospital.create([
  {name: "Hôpital Necker", location: "[123, 123]", full_address: "149 Rue de Sèvres, 75015 Paris", phone: "01 44 49 40 00", administrative_contact_name: "Dr Weasel", administrative_contact_email: "contact@hospital.com"},
  {name: "Hôpital Cochin", location: "[654, 123]", full_address: "27 Rue du Faubourg Saint-Jacques, 75014 Paris", phone: "01 58 41 41 41", administrative_contact_name: "Dr Weasel", administrative_contact_email: "contact@hospital.com"},
  {name: "Hôpital La Pitié-Salpétrière", location: "[321, 123]", full_address: "149 Rue de Sèvres, 75015 Paris", phone: "01 44 49 40 00", administrative_contact_name: "Dr Weasel", administrative_contact_email: "contact@hospital.com"},
  {name: "Hôpital Pompidou", location: "[123, 456]", full_address: "20 Rue Leblanc, 75015 Paris", phone: "01 56 09 20 00", administrative_contact_name: "Dr Weasel", administrative_contact_email: "contact@hospital.com"}
])