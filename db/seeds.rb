Team.destroy_all
Game.destroy_all
Pick.destroy_all

team_1 = Team.create(school: Faker::Company.name, mascot: Faker::Lorem.words(2).join(' '), location: "#{Faker::Address.city}, #{Faker::Address.state_abbr}", wins: rand(5..10), losses: rand(0..5))
team_2 = Team.create(school: Faker::Company.name, mascot: Faker::Lorem.words(2).join(' '), location: "#{Faker::Address.city}, #{Faker::Address.state_abbr}", wins: rand(5..10), losses: rand(0..5))
team_3 = Team.create(school: Faker::Company.name, mascot: Faker::Lorem.words(2).join(' '), location: "#{Faker::Address.city}, #{Faker::Address.state_abbr}", wins: rand(5..10), losses: rand(0..5))
team_4 = Team.create(school: Faker::Company.name, mascot: Faker::Lorem.words(2).join(' '), location: "#{Faker::Address.city}, #{Faker::Address.state_abbr}", wins: rand(5..10), losses: rand(0..5))
team_5 = Team.create(school: Faker::Company.name, mascot: Faker::Lorem.words(2).join(' '), location: "#{Faker::Address.city}, #{Faker::Address.state_abbr}", wins: rand(5..10), losses: rand(0..5))
team_6 = Team.create(school: Faker::Company.name, mascot: Faker::Lorem.words(2).join(' '), location: "#{Faker::Address.city}, #{Faker::Address.state_abbr}", wins: rand(5..10), losses: rand(0..5))
team_7 = Team.create(school: Faker::Company.name, mascot: Faker::Lorem.words(2).join(' '), location: "#{Faker::Address.city}, #{Faker::Address.state_abbr}", wins: rand(5..10), losses: rand(0..5))
team_8 = Team.create(school: Faker::Company.name, mascot: Faker::Lorem.words(2).join(' '), location: "#{Faker::Address.city}, #{Faker::Address.state_abbr}", wins: rand(5..10), losses: rand(0..5))
team_9 = Team.create(school: Faker::Company.name, mascot: Faker::Lorem.words(2).join(' '), location: "#{Faker::Address.city}, #{Faker::Address.state_abbr}", wins: rand(5..10), losses: rand(0..5))
team_10 = Team.create(school: Faker::Company.name, mascot: Faker::Lorem.words(2).join(' '), location: "#{Faker::Address.city}, #{Faker::Address.state_abbr}", wins: rand(5..10), losses: rand(0..5))
team_11 = Team.create(school: Faker::Company.name, mascot: Faker::Lorem.words(2).join(' '), location: "#{Faker::Address.city}, #{Faker::Address.state_abbr}", wins: rand(5..10), losses: rand(0..5))
team_12 = Team.create(school: Faker::Company.name, mascot: Faker::Lorem.words(2).join(' '), location: "#{Faker::Address.city}, #{Faker::Address.state_abbr}", wins: rand(5..10), losses: rand(0..5))



Game.create(title: "#{Faker::Commerce.department(2)} Bowl", location: "#{Faker::Address.city}, #{Faker::Address.state_abbr}", datetime: Faker::Date.forward , away: team_1, home: team_2, championship: false)
Game.create(title: "#{Faker::Commerce.department(2)} Bowl", location: "#{Faker::Address.city}, #{Faker::Address.state_abbr}", datetime: Faker::Date.forward , away: team_3, home: team_4, championship: false)
Game.create(title: "#{Faker::Commerce.department(2)} Bowl", location: "#{Faker::Address.city}, #{Faker::Address.state_abbr}", datetime: Faker::Date.forward , away: team_5, home: team_6, championship: false)
Game.create(title: "#{Faker::Commerce.department(2)} Bowl", location: "#{Faker::Address.city}, #{Faker::Address.state_abbr}", datetime: Faker::Date.forward , away: team_7, home: team_8, championship: false)
Game.create(title: "#{Faker::Commerce.department(2)} Bowl", location: "#{Faker::Address.city}, #{Faker::Address.state_abbr}", datetime: Faker::Date.forward , away: team_9, home: team_10, championship: false)
Game.create(title: "#{Faker::Commerce.department(2)} Bowl", location: "#{Faker::Address.city}, #{Faker::Address.state_abbr}", datetime: Faker::Date.forward , away: team_11, home: team_12, championship: false)
