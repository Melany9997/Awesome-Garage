Owner.destroy_all
Car.destroy_all
Review.destroy_all
Favourite.destroy_all

puts "creating seed files..."

owner_1 = Owner.create!(nickname: "Tony5")
owner_2 = Owner.create!(nickname: "JaneDoe")
owner_3 = Owner.create!(nickname:"Jimmy")

car_1 = Car.create!(
  brand: "Hyundai",
  model: "i10",
  year: "2008",
  fuel: "Petrol",
  owner: owner_1
)

car_2 = Car.create!(
  brand: "Honda",
  model: "Civic",
  year: "2019",
  fuel: "Diesel",
  owner: owner_2
)

car_3 = Car.create!(
  brand: "Ford",
  model: "Fiesta",
  year: "2021",
  fuel: "Electric",
  owner: owner_3
)

# Create Reviews and associate them with Cars
Review.create!(
  comment: "Great car, very reliable! Has lasted a very long time",
  rating: 5,
  car: car_1
)

Review.create!(
  comment: "Comfortable and fuel-efficient. Good for families",
  rating: 4,
  car: car_2
)

Review.create!(
  comment: "Smooth ride and good features.",
  rating: 4,
  car: car_3
)

# Create Favourites and associate them with Cars
Favourite.create!(car: car_1)
Favourite.create!(car: car_2)
Favourite.create!(car: car_3)

puts "Seeding completed successfully!"
