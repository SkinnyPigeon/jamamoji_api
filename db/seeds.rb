# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Jamamoji.destroy_all
User.destroy_all

u1 = User.create!({
  email: "jeff@bob.com",
  password: "password",
  password_confirmation: "password"
  })

j1 = Jamamoji.create!({
  name: "Jeff",
  icon: "😀",
  food: 2,
  energy: 3,
  waste: 2,
  alive: true,
  ill: false,
  happy: true,
  hungry: true,
  damage: 0,
  health: 100,
  special: 3,
  opponent_bonus: 0,
  block: 0,
  opponent_special: 3
})

u1.jamamoji = j1
u1.save

u2 = User.create!({
  email: "bob@jeff.com",
  password: "password",
  password_confirmation: "password"
  })

j2 = Jamamoji.create!({
  name: "Bob",
  icon: "😀",
  food: 2,
  energy: 3,
  waste: 2,
  alive: true,
  ill: false,
  happy: true,
  hungry: true,
  damage: 0,
  health: 100,
  special: 3,
  opponent_bonus: 0,
  block: 0,
  opponent_special: 3
})

u2.jamamoji = j2
u2.save
