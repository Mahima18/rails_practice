3.times do |topic|
	Topic.create!(
		title: "Topic #{topic}"
	)
end

puts "3 Topics created"

10.times do |blog|
	Blog.create!(
		title: "My Blog Post #{blog}",
		body: " bla bla bla",
		topic_id: Topic.last.id
	)
end

puts "10 Blog posts created"

5.times do |skill|
	Skill.create!(
		title: "My skills #{skill}",
		percent_utilized: 30
	)
end

puts "5 skills added"

8.times do |item|
	Portfolio.create!(
		title: "My portfolio #{item}",
		subtitle: "Ruby on Rails",
		body: "bla bla bla bla",
		main_image: "https://place-hold.it/600x400",
		thumb_image: "https://place-hold.it/350x200"	
	)
end

1.times do |item|
	Portfolio.create!(
		title: "My portfolio #{item}",
		subtitle: "Angular.js",
		body: "bla bla bla bla",
		main_image: "https://place-hold.it/600x400",
		thumb_image: "https://place-hold.it/350x200"	
	)
end

puts "9 portfolio blocks added"

3.times do |item|
	Portfolio.last.technologies.create!(
		name: "Technology #{item}",
		# portfolio_id: Portfolio.last.id NO need to write this 
		# if already passed in the beginning of block
	)
end

puts "3 Technologies added"