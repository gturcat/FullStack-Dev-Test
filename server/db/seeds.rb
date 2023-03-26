# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
#creation des déclaration
puts "creation des PVMES"
PvmesDeclaration.create!(compagny_name: "1",
                        compagny_siren: "111111",
                        customer_name: "turcat",
                        customer_email: "gturcat@me.com",
                        customer_phone: "0613072416",
                        adress: "788 ancienne route des Alpes 13100 Aix en Pce",
                        date_of_installation: Date.today)

PvmesDeclaration.create!(compagny_name: "2",
                        compagny_siren: "222222",
                        customer_name: "tacrut",
                        customer_email: "gturcat@mac.com",
                        customer_phone: "0613072424",
                        adress: "792 route des Alpes 13100 Aix en Pce",
                        date_of_installation: Date.today)

puts "fin des création des PVMES"

puts "creation des Panel"
Panel.create!(type_of_panel: "hybrid",
              code: "111111",
              pvmes_declaration_id: PvmesDeclaration.first.id)
Panel.create!(type_of_panel: "hybrid",
              code: "222222",
              pvmes_declaration_id: PvmesDeclaration.first.id)
Panel.create!(type_of_panel: "photovoltaic",
              code: "333333",
              pvmes_declaration_id: PvmesDeclaration.last.id)
Panel.create!(type_of_panel: "photovoltaic",
              code: "444444",
              pvmes_declaration_id: PvmesDeclaration.last.id)

puts "fin des création des panels"

