User.create!([
  {name: "Boromir", email: "boromir@manofgondor.com", password_digest: "$2a$12$ytUhZqbynupWp9U0gRUSmufOSdpZ.QOTI2hPc1fDuK.8GhJkUuHIu", username: "boromir", admin: false},
  {name: "Frodo Baggins", email: "frodo@example.com", password_digest: "$2a$12$wlSzeEIvUbqVciFuNkgfYOCATg3//OWDkPHNmag5YC626iP42bF7a", username: "frodo", admin: false},
  {name: "Sam Gamgee", email: "sammy@example.com", password_digest: "$2a$12$IdJ.WU1e5IHQ1./emmWVguRtusXSAC09EbonqHTFNqzuzeTZbVDkK", username: "sam", admin: false},
  {name: "Elrond", email: "elrond@example.com", password_digest: "$2a$12$7yQB/Ls6xBcXeEHFsx4hguycpbnzhQ30j5yOoQneM0Vpm7Ng9bv1O", username: "elrond", admin: false},
  {name: "Arwen", email: "arwen@example.com", password_digest: "$2a$12$6B1vti4T52ukiY1HYQUdF.ffFCBu2FjmPsCGKKj2lTyRo.XJgoiea", username: "arwen", admin: true},
  {name: "FREDEGAR BOLGER", email: "fredegar@example.com", password_digest: "$2a$12$ewFdi3bMTBEX3CTsbujJS.jvlI/am0Fefzs8SCDIutqtksFib88X2", username: "fredegar", admin: false}
])
Review.create!([
  {stars: 5, comment: "Awesome movie!", movie_id: 3, user_id: 20},
  {stars: 5, comment: "Loved it!", movie_id: 22, user_id: 20},
  {stars: 4, comment: "Ok, but way too many characters. ", movie_id: 4, user_id: 20},
  {stars: 5, comment: "Loved it!", movie_id: 3, user_id: 20},
  {stars: 5, comment: "A very fine film. ", movie_id: 3, user_id: 18},
  {stars: 2, comment: "Didn't care much for this one", movie_id: 19, user_id: 20},
  {stars: 4, comment: "This one was pretty good!", movie_id: 12, user_id: 20},
  {stars: 1, comment: "One does not simply walk into Mordor!", movie_id: 20, user_id: 9},
  {stars: 5, comment: "Aragorn is so hot!", movie_id: 20, user_id: 20},
  {stars: 5, comment: "A most outstanding film if you ask me!", movie_id: 20, user_id: 17},
  {stars: 5, comment: "Excellent!", movie_id: 20, user_id: 18},
  {stars: 5, comment: "You know for a movie about big people, this one was quite good. ", movie_id: 3, user_id: 17}
])
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
Favorite.create!([
  {user_id: 17, movie_id: 20},
  {user_id: 9, movie_id: 20},
  {user_id: 17, movie_id: 21},
  {user_id: 20, movie_id: 23},
  {user_id: 17, movie_id: 23},
  {user_id: 20, movie_id: 12},
  {user_id: 17, movie_id: 12},
  {user_id: 17, movie_id: 3},
  {user_id: 20, movie_id: 22},
  {user_id: 20, movie_id: 9}
])
Characterization.create!([
  {movie_id: 21, genre_id: 5},
  {movie_id: 3, genre_id: 5},
  {movie_id: 21, genre_id: 1},
  {movie_id: 21, genre_id: 3},
  {movie_id: 22, genre_id: 1},
  {movie_id: 22, genre_id: 3},
  {movie_id: 20, genre_id: 4},
  {movie_id: 3, genre_id: 13},
  {movie_id: 17, genre_id: 9},
  {movie_id: 17, genre_id: 5},
  {movie_id: 25, genre_id: 9},
  {movie_id: 25, genre_id: 4}
])
