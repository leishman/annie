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


ranges = [
  ["San Leandro Rifle & Pistol Range", 37.714446, -122.194667],
  ["Sunnyvale Rod & Gun Club Inc", 37.299736, -122.082639],
  ["Livermore Pleasanton Rod & Gun Club", 37.736631, -121.742343],
  ["Jackson Arms", 37.646117, -122.401544],
  ["Coyote Point Rifle & Pistol Club", 37.588531, -122.32396],
  ["Richmond Rod & Gun Club", 37.978583, -122.365886],
  ["Bay Area Firearms", 37.587885, -122.337667],
  ["Peninsula Guns and Tactical", 37.620741, -122.410584],
  ["Reed's Indoor Range", 37.378548, -121.952762],
  ["Target Masters West", 37.448911, -121.911505],
  ["Santa Clara Valley Rifle Club", 37.318267, -121.863682],
  ["Martinez Gun Club", 38.018603, -122.080605],
  ["Diablo Rod & Gun Club", 38.020043, -121.992874],
  ["Circle S Ranch & Outdoor Shooting Range", 38.257342, -122.839562],
  ["Los Altos Rod and Gun Club", 37.238838, -122.105227]
]


ranges.each do |range|
  GunRange.create!(name: range[0], latitude: range[1], longitude: range[2])
end


User.create!(email: 'leishman3@gmail.com',
             password: 'simple',
             password_confirmation: 'simple',
             name: 'Alexander Leishman')

