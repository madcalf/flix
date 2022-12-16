def random_users
  qty = rand(1..5)
  User.offset(rand(User.count - qty)).limit(qty)
end

def fake_comment
  Faker::Lorem.paragraph
end

def fake_user
  first_name = Faker::Name.unique.neutral_first_name

  {
    name: "#{first_name} #{Faker::Name.last_name}",
    email: "#{first_name}@example.com",
    password: (first_name[0] * 10).downcase,
    username: first_name,
    admin: false
  }
end

def add_users
  puts "Seeding Users..."
  10.times do
    User.create!(fake_user)
  end
end

def assign_admins
  User.offset(rand(User.count - 3)).limit(3).each do |user|
    puts "  Assigning admin user: #{user.name}"
    user.update!(admin: true)
  end
end

def add_fake_reviews (movie)
  random_users.each do |user|
    user.reviews.create!(comment: fake_comment, stars: rand(1..5), movie: movie )
  end
end

def add_favorites (movie)
  random_users.each do |user|
    movie.favorites.create!(user: user)
  end
end

def add_movies
  puts "Seeding Movies..."
  Movie.create!([
    {title: "Black Panther", rating: "PG-13", total_gross: "1346913161.0", description: "T'Challa, heir to the hidden but advanced kingdom of Wakanda, must step forward to lead his people into a new future and must confront a challenger from his country's past.", released_on: "2018-03-16", director: "Ryan Coogler", duration: "134 m", image_file_name: "black-panther.png", slug: "black-panther"},
    {title: "Avengers: Infinity War", rating: "PG-13", total_gross: "2048359754.0", description: "The Avengers and their allies must be willing to sacrifice all in an attempt to defeat the powerful Thanos before his blitz of devastation and ruin puts an end to the universe.", released_on: "2018-04-27", director: "Anthony Russo and Joe Russo", duration: "181 m", image_file_name: "avengers-infinity-war.png", slug: "avengers-infinity-war"},
    {title: "Iron Man", rating: "PG-13", total_gross: "585366247.0", description: "When wealthy industrialist Tony Stark is forced to build an armored suit after a life-threatening incident, he ultimately decides to use its technology to fight against evil.", released_on: "2008-05-02", director: "Jon Favreau", duration: "126 m", image_file_name: "ironman.png", slug: "iron-man"},
    {title: "Superman", rating: "PG", total_gross: "300451603.0", description: "An alien orphan is sent from his dying planet to Earth, where he grows up to become his adoptive home's first and greatest super-hero. Was this the one with General Zod?", released_on: "1978-12-15", director: "Richard Donner", duration: "143 min", image_file_name: "superman.png", slug: "superman"},
    {title: "Spider-Man", rating: "PG-13", total_gross: "825025036.0", description: "When bitten by a genetically modified spider, a nerdy, shy, and awkward high school student gains spider-like abilities that he eventually must use to fight evil as a superhero after tragedy befalls his family.", released_on: "2002-05-03", director: "Sam Raimi", duration: "121 min", image_file_name: "spiderman.png", slug: "spider-man"},
    {title: "Batman", rating: "PG-13", total_gross: "411348924.0", description: "The Dark Knight of Gotham City begins his war on crime with his first major enemy being the clownishly homicidal Joker.", released_on: "1989-06-23", director: "Tim Burton", duration: "126 min", image_file_name: "batman.png", slug: "batman"},
    {title: "Catwoman", rating: "PG-13", total_gross: "82102379.0", description: "Patience Philips seems destined to spend her life apologizing for taking up space. Despite her artistic ability she has a more than respectable career as a graphic designer.", released_on: "2004-07-23", director: "Jean-Christophe \"Pitof\" Comar", duration: "104 m", image_file_name: "catwoman.png", slug: "catwoman"},
    {title: "Wonder Woman", rating: "PG-13", total_gross: "821847013.0", description: "When a pilot crashes and tells of conflict in the outside world, Diana, an Amazonian warrior in training, leaves home to fight a war, discovering her full powers and true destiny.", released_on: "2017-06-02", director: "Patty Jenkins", duration: "141 m", image_file_name: "wonder-woman.png", slug: "wonder-woman"},
    {title: "Black Panther 2", rating: "PG", total_gross: "0.0", description: "Sadness...Sadness...Sadness", released_on: "2024-08-27", director: "", duration: "120m ", image_file_name: "placeholder.png", slug: "black-panther-2"},
    {title: "Sharknado 11.5", rating: "PG", total_gross: "0.0", description: "Madness!Madness!Madness!Madness!Madness!Madness!", released_on: "2026-09-01", director: nil, duration: "120m", image_file_name: "placeholder.png", slug: "sharknado-11-5"},
    {title: "Random Movie Title!", rating: "PG-13", total_gross: "0.0", description: "A movie about nothing really... Really.", released_on: "2022-08-30", director: "", duration: "120 m", image_file_name: "placeholder.png", slug: "random-movie-title"},
    {title: "Return of the King", rating: "PG", total_gross: "350000000000.0", description: "Third installment of the Lord of the Rings Trilogy", released_on: "2004-04-29", director: "Peter Jackson", duration: "300 m", image_file_name: "two-towers.png", slug: "return-of-the-king"},
    {title: "Sharknado", rating: "NC-17", total_gross: "4500.0", description: "When a freak hurricane swamps Los Angeles, nature's deadliest killer rules sea, land, and air as thousands of sharks terrorize the waterlogged populace.", released_on: "2013-01-25", director: "Anthony C. Ferrante", duration: "82m", image_file_name: "placeholder.png", slug: "sharknado"},
    {title: "Test", rating: "G", total_gross: "222.0", description: "some words about a movie and some more words. wow lots of words.", released_on: "2022-10-27", director: "Anyone", duration: "22m", image_file_name: "placeholder.png", slug: "test"},
    {title: "Ant Man", rating: "PG", total_gross: "1000.0", description: "A man can turn into an ant. What more needs to be said...", released_on: "-4712-01-01", director: nil, duration: "120 m", image_file_name: "placeholder.png", slug: "ant-man"},
    {title: "Fellowship of the Ring", rating: "PG-13", total_gross: "400000000000.0", description: "A pretty damn good movie. A pretty damn good movie. A pretty damn good movie. ", released_on: "2001-11-08", director: "Peter Jackson", duration: "400m", image_file_name: "placeholder.png", slug: "fellowship-of-the-ring"}
  ])
end

def add_genres
  puts "Seeding Genres..."
  Genre.create!([
    {name: "Comedy", slug: "comedy"},
    {name: "Disaster", slug: "disaster"},
    {name: "Fantasy", slug: "fantasy"},
    {name: "Science Fiction", slug: "science-fiction"},
    {name: "History", slug: "history"},
    {name: "Horror", slug: "horror"},
    {name: "Anime", slug: "anime"},
    {name: "Action", slug: "action"},
    {name: "Drama", slug: "drama"}
  ])
end

def add_reviews_and_faves
  puts "Seeding Reviews and Favorites..."
  Movie.all.each do |movie|
    add_fake_reviews(movie)
    add_favorites(movie)
  end
end

add_users
assign_admins
add_movies
add_reviews_and_faves
add_genres
