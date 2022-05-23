puts 'deleting data'

User.destroy_all
User.reset_pk_sequence
Hike.destroy_all
Hike.reset_pk_sequence
Plan.destroy_all
Plan.reset_pk_sequence

puts 'seeding data'

alex = User.create!(username: 'alex', name: 'Alex Lee', email: 'alex@gmail.com', password: 'PassWord')

hike1 = Hike.create!(name: 'Shanahan Ridge Trail', location: 'Boulder Open Space', length: 4.2, elevation_gain: 807, dog_friendly: true)
hike2 = Hike.create!(name: 'Coal Seam Trail to Walker Ranch Park', location: 'Walker Ranch Park', length: 27.7, elevation_gain: 5022, dog_friendly: true)
hike3 = Hike.create!(name: 'Continental Divide Overlook', location: 'Eldorado Canyon State Park', length: 7.2, elevation_gain: 1302, dog_friendly: true)
hike4 = Hike.create!(name: 'Lost Lake via Hessie Trail', location: 'Roosevelt National Forest', length: 4.0, elevation_gain: 830, dog_friendly: true)

A = Plan.create!(date: 20220917, user_id: 1, hike_id: 1)

puts 'done seeding!'