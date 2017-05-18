# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

guns = [
          "Desert Eagle",
          "R8 Revolver",
          "Revolver (Rapid Fire)",
          "Dual Berettas",
          "Five-SeveN",
          "Glock-18",
          "Glock-18 (burst)",
          "P2000",
          "USP-S (no silencer)",
          "USP-S (silencer)",
          "P250",
          "CZ75 Auto",
          "Tec-9"
        ]

guns.each do |gun|
  Gun.create!(name: gun, gun_type: "handgun")
end