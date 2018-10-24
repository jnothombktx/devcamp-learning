3.times do |topic|
  Topic.create!(
    title: "Topic #{topic}"
  )
end

puts "3 Topics Created"

10.times do |blog|
  Blog.create!(
    title: "My Blog Post #{blog}",
    body: "It looks like an Imperial cruiser. Our passengers must be hotter than I thought. Try and hold them off. Angle the deflector shield while I make the calculations for the jump to light speed. Stay sharp! There are two more coming in, they're going to try to cut us off. Why don't you outrun them? I thought you said this thing was fast. Watch your mouth, kid, or you're going to find yourself floating home. We'll be safe enough once we make the jump to hyperspace. Besides, I know a few maneuvers. We'll lose them! Here's where the fun begins!",
    topic_id: Topic.last.id
  )
end

puts "10 blog posts created"

5.times do |skill|
  Skill.create!(
    title: "Rails #{skill}",
    percent_utilized: 15
  )
end

puts "5 skills created"

8.times do |portfolio_item|
  Portfolio.create!(
    title: "Portfolio title #{portfolio_item}",
    subtitle: "Ruby on Rails",
    body: "That malfunctioning little twerp. This is all his fault! He tricked me into going this way, but he'll do no better. Wait, what's that? A transport! I'm saved! Over here! Help! Please, help! Artoo-Detoo! It's you! It's you!",
    main_image: "https://via.placeholder.com/600x400",
    thumb_image: "https://via.placeholder.com/350x200"
  )
end

1.times do |portfolio_item|
  Portfolio.create!(
    title: "Portfolio title #{portfolio_item}",
    subtitle: "Angular",
    body: "That malfunctioning little twerp. This is all his fault! He tricked me into going this way, but he'll do no better. Wait, what's that? A transport! I'm saved! Over here! Help! Please, help! Artoo-Detoo! It's you! It's you!",
    main_image: "https://via.placeholder.com/600x400",
    thumb_image: "https://via.placeholder.com/350x200"
  )
end

puts "9 portfolios created"