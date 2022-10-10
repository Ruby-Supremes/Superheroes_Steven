10.times do
  Power.create(name: Faker::Superhero.power, description: Faker::Superhero.descriptor)
end

10.times do
  Hero.create(name: Faker::Superhero.name, super_name: Faker::Superhero.suffix)
end

10.times do
  HeroPower.create(strength: ["Strong", "Average", "Weak"].shuffle.first, hero_id: rand(1..4), power_id: rand(1..4))
end

puts "Done Seeding!!!❤️❤️❤️❤️"