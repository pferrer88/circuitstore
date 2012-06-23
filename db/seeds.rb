# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
# puts 'SETTING UP DEFAULT USER LOGIN'
# user = User.create! :name => 'First User', :email => 'user@example.com', :password => 'please', :password_confirmation => 'please', :confirmed_at => Time.now.utc
# puts 'New user created: ' << user.name
# user2 = User.create! :name => 'Second User', :email => 'user2@example.com', :password => 'please', :password_confirmation => 'please', :confirmed_at => Time.now.utc
# puts 'New user created: ' << user2.name
# user.add_role :admin

puts 'SETTING UP CATEGORIES'
Category.delete_all
for cat in %w[Action Adventure FPS Role-Playing Simulation]
  temp = Category.create! :name => cat
  puts 'New category created: ' << temp.name
end

puts 'SETTING UP FAKE PRODUCTS'
#Place.delete_all
prng = Random.new()
100.times do
  p = Product.create :name => Faker::Company.name,
                   :description => Faker::Company.catch_phrase,
                   :code => Faker::PhoneNumber.phone_number,
                   :price => (prng.rand * 100),
                   :category_id => Category.all[prng.rand(4)].id                   
  puts 'New Product created: ' << p.name
end

