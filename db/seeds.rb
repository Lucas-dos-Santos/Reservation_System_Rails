require 'faker'

10.times do
	User.create(
		email: Faker::Internet.email, 
		name: Faker::Name.name, 
		password: '12345678', 
		password_confirmation: '12345678'
	)
end

30.times do
	Category.create(
		name: Faker::Book.genre
	)
end

100.times do
	Book.create(
		title: Faker::Book.title,
		author: Faker::Book.author,
		category_id: rand(1..30)
	)
end

50.times do |i|
	Reservation.create(
		user_id: rand(1..10), 
		book_id: rand(1..100), 
		booking_date: Date.today - i.days, 
		return_date: Date.today + i.days, 
		booking_status: [0,1].sample
	)
end