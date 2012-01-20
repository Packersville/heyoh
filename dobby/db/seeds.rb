# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Team.create([{ city: 'Atlanta', name: 'Falcons'}, {city: 'Baltimore', name:'Ravens'}, {city: 'New England', name: 'Patriots'}, {city: 'Buffalo', name: 'Bills'}, {city: 'Carolina', name: 'Panthers'},
                     {city: 'Chicago', name: 'Bears'}, {city: 'Cincinatti', name: 'Bengals'}, {city: 'Cleveland', name: 'Browns'}, {city: 'Dallas', name: 'Cowboys'}, {city: 'Denver', name: 'Broncos'},
                     {city: 'Detroit', name: 'Lions'}, {city: 'Indianapolis', name: 'Colts'}, {city: 'Jacksonville', name: 'Jaguars'}, {city: 'Kansas City', name: 'Chiefs'}, {city: 'Miami', name: 'Dolphins'},
                     {city: 'Green Bay', name: 'Packers'}, {city: 'Houston', name: 'Texans'}, {city: 'Minnessota', name: 'Vikings'}, {city: 'Tennessee', name: 'Titans'}, {city: 'New Orleans', name: 'Saints'},
                     {city: 'New York', name: 'Giants'}, {city: 'New York', name: 'Jets'}, {city: 'Oakland', name: 'Raiders'}, {city: 'Philadelphia', name: 'Eagles'}, {city: 'Arizona', name: 'Cardinals'},
                     {city: 'Pittsburgh', name: 'Steelers'}, {city: 'St Louis', name: 'Rams'}, {city: 'San Diego', name: 'Chargers'}, {city: 'San Francisco', name: '49ers'}, {city: 'Seattle', name: 'Seahawks'},
                     {city: 'Tampa Bay', name: 'Buccaneers'}, {city: 'Washington', name: 'Redskins'}])

#Game.create([{away_team_id: 1, home_team_id: 2, week: 1, index: 1}, {away_team_id: 3, homeTeam: 4, week: 1, index: 2}])

#Week.create([{week:1, year:2012}, {week:2, year:2012}, {week:3, year:2012}, {week:4, year:2012}, {week:5, year:2012}, {week:6, year:2012}, {week:7, year:2012}, {week:8, year:2012}, {week:9, year:2012},
           #  {week:10, year:2012},{week:11, year:2012}, {week:12, year:2012}, {week:13, year:2012}, {week:14, year:2012}, {week:15, year:2012}, {week:16, year:2012}])