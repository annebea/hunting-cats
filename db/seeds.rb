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

#LE LOUEUR
user0 = User.new(email: 'huey@gmail.com', password: 'azerty', first_name: 'Huey', last_name: 'Duck', phone: '0230405060')
user0.avatar.attach(io: File.open(Rails.root.join('db/fixtures/users/huey.png')), filename: 'huey.png', content_type: 'image/png')
user0.save!

#LE PROPRIETAIRE
user1 = User.new(email: 'dewey@gmail.com', password: 'azerty', first_name: 'Dewey', last_name: 'Duck', phone: '0230405060')
user1.avatar.attach(io: File.open(Rails.root.join('db/fixtures/users/dewey.png')), filename: 'dewey.png', content_type: 'image/png')
user1.save!

user2 = User.new(email: 'louie@gmail.com', password: 'azerty', first_name: 'Louie', last_name: 'Duck', phone: '0230405060')
user2.avatar.attach(io: File.open(Rails.root.join('db/fixtures/users/louie.png')), filename: 'louie.png', content_type: 'image/png')
user2.save!

user3 = User.new(email: 'maud@gmail.com', password: 'azerty', first_name: 'Maud', last_name: 'De La Gournerie', phone: '0233454346')
user3.avatar.attach(io: File.open(Rails.root.join('db/fixtures/users/maud.jpeg')), filename: 'maud.jpeg', content_type: 'image/jpeg')
user3.save!

user4 = User.new(email: 'vincent@gmail.com', password: 'azerty', first_name: 'Vincent', last_name: 'Guilleux', phone: '0233454346')
user4.avatar.attach(io: File.open(Rails.root.join('db/fixtures/users/vincent.jpeg')), filename: 'vincent.jpeg', content_type: 'image/jpeg')
user4.save!

user5 = User.new(email: 'sebastien@gmail.com', password: 'azerty', first_name: 'Sebastien', last_name: 'Etienne', phone: '0233454346')
user5.avatar.attach(io: File.open(Rails.root.join('db/fixtures/users/seb.jpg')), filename: 'seb.jpg', content_type: 'image/jpg')
user5.save!

user6 = User.new(email: 'anne@gmail.com', password: 'azerty', first_name: 'Anne', last_name: 'Mabire', phone: '0233454346')
user6.avatar.attach(io: File.open(Rails.root.join('db/fixtures/users/anne.jpeg')), filename: 'anne.jpeg', content_type: 'image/jpeg')
user6.save!

cat1 = Cat.create(name: 'Dolby', description: 'Black and white cat', breed: 'Gouttiere', performance: 1, price_per_day: 20, status: 'available', age: 12, address: '131 Boulevard Robert Schuman, Nantes', user_id: user2.id)
cat1.photo.attach(io: File.open(Rails.root.join('db/fixtures/cats/dolby.jpg')), filename: 'dolby.jpg', content_type: 'image/jpg')
cat1.save!

cat2 = Cat.create(name: 'Iago', description: 'Awesome hunter', breed: 'Bengal', performance: 4, price_per_day: 30, status: 'available', age: 6, address: '131 Boulevard Robert Schuman, Nantes', user_id: user2.id)
cat2.photo.attach(io: File.open(Rails.root.join('db/fixtures/cats/iago.jpg')), filename: 'iago.jpg', content_type: 'image/jpg')
cat2.save!

cat3 = Cat.create(name: 'Moustache', description: 'Great at hunting', breed: 'Bengal', performance: 2, price_per_day: 26, status: 'available', age: 3, address: '30 boulevard René Laennec, Rennes', user_id: user3.id)
cat3.photo.attach(io: File.open(Rails.root.join('db/fixtures/cats/moustache.jpg')), filename: 'moustache.jpg', content_type: 'image/jpg')
cat3.save!

cat4 = Cat.create(name: 'Poutine', description: 'THE BEST', breed: 'Maine coon', performance: 5, price_per_day: 45, status: 'available', age: 10, address: '30 boulevard René Laennec, Rennes', user_id: user1.id)
cat4.photo.attach(io: File.open(Rails.root.join('db/fixtures/cats/poutine.jpg')), filename: 'poutine.jpg', content_type: 'image/jpg')
cat4.save!

cat5 = Cat.create(name: 'Staline', description: 'Mice, be scared!', breed: 'Bengal', performance: 4, price_per_day: 35, status: 'available', age: 8, address: '30 boulevard René Laennec, Rennes', user_id: user4.id)
cat5.photo.attach(io: File.open(Rails.root.join('db/fixtures/cats/staline.jpg')), filename: 'staline.jpg', content_type: 'image/jpg')
cat5.save!

cat6 = Cat.create(name: 'Mrs Fluffton', description: 'Hunt with style', breed: 'Brittish', performance: 3, price_per_day: 32, status: 'available', age: 5, address: '4 rue du Centre, Saint-Gilles', user_id: user6.id)
cat6.photo.attach(io: File.open(Rails.root.join('db/fixtures/cats/mrs-fluffton.jpg')), filename: 'mrs-fluffton.jpg', content_type: 'image/jpg')
cat6.save!

booking1 = Booking.create(cat_id: cat3.id, user_id: user0.id, starting_date: Date.new(2019,4,7), ending_date: Date.new(2019,4,9), status: 'accepted', total_price: 30)
booking2 = Booking.create(cat_id: cat4.id, user_id: user1.id, starting_date: Date.new(2018,12,10), ending_date: Date.new(2018,12,14), status: 'accepted', total_price: 180)
booking3 = Booking.create(cat_id: cat4.id, user_id: user1.id, starting_date: Date.new(2019,8,25), ending_date: Date.new(2019,8,27), status: 'accepted', total_price: 90)
booking4 = Booking.create(cat_id: cat4.id, user_id: user1.id, starting_date: Date.new(2020,2,14), ending_date: Date.new(2020,2,17), status: 'accepted', total_price: 135)


booking5 = Booking.create(cat_id: cat3.id, user_id: user3.id, starting_date: Date.new(2020,5,5), ending_date: Date.new(2020,5,7), status: 'rejected', total_price: 70)
booking6 = Booking.create(cat_id: cat1.id, user_id: user1.id, starting_date: Date.new(2020,5,2), ending_date: Date.new(2020,4,4), status: 'pending', total_price: 40)
booking7 = Booking.create(cat_id: cat2.id, user_id: user5.id, starting_date: Date.new(2020,4,26), ending_date: Date.new(2020,4,27), status: 'pending', total_price: 30)

