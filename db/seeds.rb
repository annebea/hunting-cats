# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
require "open-uri"

Booking.destroy_all
Cat.destroy_all
User.destroy_all

# toto = User.new(
#   email:      'toto@mail.com',
#   password:   'azerty',
#   first_name: 'Toto',
#   last_name:  'zero',
# )
# toto.avatar.attach(
#   io:       File.open(Rails.root.join('db/fixtures/users/user_cow.jpg')),
#   filename: 'user_cow.jpg'
# )
# toto.save!

user0 = User.new(email: 'huey@gmail.com', password: 'azerty', first_name: 'Huey', last_name: 'Duck', phone: '0230405060', address: 'Donaldville')
user0.avatar.attach(io: File.open(Rails.root.join('db/fixtures/users/huey.png')), filename: 'huey.png', content_type: 'image/png')
user0.save!

user1 = User.new(email: 'dewey@gmail.com', password: 'azerty', first_name: 'Dewey', last_name: 'Duck', phone: '0230405060', address: 'Donaldville')
user1.avatar.attach(io: File.open(Rails.root.join('db/fixtures/users/dewey.png')), filename: 'dewey.png', content_type: 'image/png')
user1.save!

user2 = User.new(email: 'louie@gmail.com', password: 'azerty', first_name: 'Louie', last_name: 'Duck', phone: '0230405060', address: 'Donaldville')
user2.avatar.attach(io: File.open(Rails.root.join('db/fixtures/users/louie.png')), filename: 'louie.png', content_type: 'image/png')
user2.save!

user3 = User.new(email: 'maud@gmail.com', password: 'azerty', first_name: 'Maud', last_name: 'De La Gournerie', phone: '0233454346', address: 'Rennes')
user3.avatar.attach(io: File.open(Rails.root.join('db/fixtures/users/maud.jpeg')), filename: 'maud.jpeg', content_type: 'image/jpeg')
user3.save!

user4 = User.new(email: 'vincent@gmail.com', password: 'azerty', first_name: 'Vincent', last_name: 'Guilleux', phone: '0233454346', address: 'Rennes')
user4.avatar.attach(io: File.open(Rails.root.join('db/fixtures/users/vincent.jpeg')), filename: 'vincent.jpeg', content_type: 'image/jpeg')
user4.save!

user5 = User.new(email: 'sebastien@gmail.com', password: 'azerty', first_name: 'Sebastien', last_name: 'Etienne', phone: '0233454346', address: 'Lannion')
user5.avatar.attach(io: File.open(Rails.root.join('db/fixtures/users/seb.jpg')), filename: 'seb.jpg', content_type: 'image/jpg')
user5.save!

user6 = User.new(email: 'anne@gmail.com', password: 'azerty', first_name: 'Anne', last_name: 'Mabire', phone: '0233454346', address: 'Saint-Gilles')
user6.avatar.attach(io: File.open(Rails.root.join('db/fixtures/users/anne.jpeg')), filename: 'anne.jpeg', content_type: 'image/jpeg')
user6.save!

cat1 = Cat.create(name: 'Dolby', description: 'Black and white cat', breed: 'Gouttiere', performance: 3, price_per_day: 20, status: 'available', age: 12, user_id: user2)
cat1.photo.attach(io: File.open(Rails.root.join('db/fixtures/cats/dolby.jpg')), filename: 'dolby.jpg', content_type: 'image/jpg')
cat1.save!

cat2 = Cat.create(name: 'Iago', description: 'Awesome hunter', breed: 'Bengal', performance: 7, price_per_day: 30, status: 'available', age: 6, user_id: user2)
cat2.photo.attach(io: File.open(Rails.root.join('db/fixtures/cats/iago.jpg')), filename: 'iago.jpg', content_type: 'image/jpg')
cat2.save!

cat3 = Cat.create(name: 'Moustache', description: 'Great at hunting', breed: 'Bengal', performance: 5, price_per_day: 26, status: 'available', age: 3, user_id: user4)
cat3.photo.attach(io: File.open(Rails.root.join('db/fixtures/cats/moustache.jpg')), filename: 'moustache.jpg', content_type: 'image/jpg')
cat3.save!

cat4 = Cat.create(name: 'Poutine', description: 'THE BEST', breed: 'Maine coon', performance: 10, price_per_day: 45, status: 'available', age: 10, user_id: user4)
cat4.photo.attach(io: File.open(Rails.root.join('db/fixtures/cats/poutine.jpg')), filename: 'poutine.jpg', content_type: 'image/jpg')
cat4.save!

cat5 = Cat.create(name: 'Staline', description: 'Mice, be scared!', breed: 'Bengal', performance: 7, price_per_day: 35, status: 'available', age: 8, user_id: user4)
cat5.photo.attach(io: File.open(Rails.root.join('db/fixtures/cats/staline.jpg')), filename: 'staline.jpg', content_type: 'image/jpg')
cat5.save!

cat6 = Cat.create(name: 'Mrs Fluffton', description: 'Hunt with style', breed: 'Brittish', performance: 6, price_per_day: 32, status: 'available', age: 5, user_id: user6)
cat6.photo.attach(io: File.open(Rails.root.join('db/fixtures/cats/mrs-fluffton.jpg')), filename: 'mrs-fluffton.jpg', content_type: 'image/jpg')
cat6.save!

booking1 = Booking.create(cat_id: 4, user_id: 1, starting_date: Date.new(2020,4,18), ending_date: Date.new(2020,4,19), status: 'pending', total_price: 45)
booking2 = Booking.create(cat_id: 4, user_id: 1, starting_date: Date.new(2020,4,26), ending_date: Date.new(2020,4,29), status: 'pending', total_price: 135)
booking3 = Booking.create(cat_id: 5, user_id: 4, starting_date: Date.new(2020,4,25), ending_date: Date.new(2020,4,28), status: 'pending', total_price: 105)
booking4 = Booking.create(cat_id: 5, user_id: 4, starting_date: Date.new(2020,5,5), ending_date: Date.new(2020,5,7), status: 'pending', total_price: 70)
booking5 = Booking.create(cat_id: 1, user_id: 2, starting_date: Date.new(2020,5,2), ending_date: Date.new(2020,4,4), status: 'pending', total_price: 40)
booking6 = Booking.create(cat_id: 2, user_id: 6, starting_date: Date.new(2020,4,26), ending_date: Date.new(2020,4,27), status: 'pending', total_price: 30)

