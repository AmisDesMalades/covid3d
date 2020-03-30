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
  { first_name: "Thomas", last_name: "Baugnon", job: "DGOS", email: "thomas.baugnon@aphp.fr" },
  { first_name: "Ludovic", last_name: "Bénichou", job: "médecin", email: "lbenichou@hpsj.fr" },
  { first_name: "Carine", last_name: "Chevrier", job: "APHP", email: "carine.chevrier12@gmail.com" },
  { first_name: "Brice", last_name: "Dallagnol", job: "ingénieur", email: "brice.dallagnol@hotmail.com" },
  { first_name: "Pierre-François", last_name: "Ceccaldi", job: "médecin", email: "pf.ceccaldi@aphp.fr" },
  { first_name: "Philippe", last_name: "Cochin", job: "CTO & dev", email: "philippe@cochin.fr" },
  { first_name: "Jean-Michel", last_name: "Constantin", job: "médecin", email: "jean-michel.constantin@aphp.fr" },
  { first_name: "Souhayl", last_name: "Dahmani", job: "médecin", email: "souhayl.dahmani@gmail.com" },
  { first_name: "Jérémy", last_name: "Dallard", job: "ingénieur", email: "jeremy.dallard@ensta-paristech.fr" },
  { first_name: "Baudoin", last_name: "de Metz", job: "fabricant", email: "baudoindemetz@gmail.com" },
  { first_name: "Jacques", last_name: "de Montblanc", job: "médecin", email: "jacques.de-montblanc@aphp.fr" },
  { first_name: "Vincent", last_name: "Degos", job: "médecin", email: "vincent.degos@aphp.fr" },
  { first_name: "Jean-Guillaume", last_name: "Enault", job: "chef produit IoT", email: "jg.enault@gmail.com" },
  { first_name: "Vincent", last_name: "Fouquet", job: "odontologiste", email: "vincent.fouquet@parisdescartes.fr" },
  { first_name: "Anne-Laure", last_name: "Gaultier", job: "médecin", email: "anne-laure.gaultier@aphp.fr" },
  { first_name: "Serge", last_name: "Kétoff", job: "médecin", email: "sketoff@hpsj.fr" },
  { first_name: "Roman", last_name: "Hossein Khonsari", job: "médecin", email: "3d.covid@aphp.fr" },
  { first_name: "Nicolas", last_name: "Kogane", job: "médecin", email: "nikogane@gmail.com" },
  { first_name: "Thomas", last_name: "Landrain", job: "entrepreneur", email: "thomas@jogl.io" },
  { first_name: "Stéphane", last_name: "Legoff", job: "ingénieur", email: "stephane.le-goff@parisdescartes.fr" },
  { first_name: "Vincent", last_name: "Lemarteleur", job: "ingénieur", email: "vincent.lemarteleur@univ-paris-diderot.fr" },
  { first_name: "Cécile", last_name: "Monteil", job: "médecin", email: "cecile.monteil@aphp.fr" },
  { first_name: "Pascal", last_name: "Morenton", job: "ingénieur", email: "pascal.morenton@centralesupelec.fr" },
  { first_name: "Manuelle", last_name: "Panczer", job: "AGEPS", email: "manuelle.panczer@aphp.fr" },
  { first_name: "Patrick", last_name: "Plaisance", job: "médecin", email: "patrick.plaisance@aphp.fr" },
  { first_name: "Laurent", last_name: "Tapie", job: "ingénieur", email: "laurent.tapie@univ-paris13.fr" },
  { first_name: "Guillaume", last_name: "Tassin", job: "comptable", email: "guillaume.tassin@kwfrance.com" },
  { first_name: "Bertrand", last_name: "Tavitian", job: "médecin", email: "bernard.tavitian@inserm.fr" },
  { first_name: "Pierre-Louis", last_name: "Tharaux", job: "médecin", email: "pierre-louis.tharaud@inserm.fr" }
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