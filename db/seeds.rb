10.times do |blog|
	Blog.create!(
		title: "My Blog Post #{blog}",
		body: " bla bla bla"
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

9.times do |item|
	Portfolio.create!(
		title: "My portfolio #{item}",
		subtitle: "What I do",
		body: "bla bla bla bla",
		main_image: "https://place-hold.it/600x400",
		thumb_image: "https://place-hold.it/350x200"	
	)
end

puts "9 portfolio blocks added"