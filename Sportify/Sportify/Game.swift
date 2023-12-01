//
//  Game.swift
//  Sportify
//
//  Created by Meto Ajagu on 11/29/23.
//

import SwiftUI

struct Game: Codable, Identifiable {
    let id = UUID()
    let sport: String
    let image: String
    let gender: String
    let location: String
    let dateTime: Date
    let awayLogo: String
    let away: String
    let num_tickets: Int
    let tickets: [Ticket]
    let usersAttending: [Profile]
    let homeRoster: [Player]
    let awayRoster: [Player]
}

var games: [Game] = [Game(
    sport: "Basketball",
    image:"https://upload.wikimedia.org/wikipedia/commons/thumb/9/9d/Cornell_%22C%22_logo.svg/1587px-Cornell_%22C%22_logo.svg.png",
    gender: "Men's",
    location: "Bartels",
    dateTime: Date(),
    awayLogo: "https://upload.wikimedia.org/wikipedia/commons/thumb/b/b7/Harvard_Crimson_logo_2020.svg/640px-Harvard_Crimson_logo_2020.svg.png",
    away: "Harvard",
    num_tickets: 200,
    tickets: [],
    usersAttending: [],
    homeRoster: [
    Player(name: "Lebron James", age: "38", picture: "https://cdn.nba.com/headshots/nba/latest/1040x760/2544.png", bio: "LeBron James, born on December 30, 1984, is a renowned American professional basketball player widely regarded as one of the greatest of all time. With a career spanning multiple teams, including the Cleveland Cavaliers, Miami Heat, and Los Angeles Lakers, James has achieved numerous accolades, including multiple NBA championships, MVP awards, and All-Star selections, leaving an indelible mark on the sport of basketball."),
    Player(name: "Anthony Davis", age: "30", picture: "https://cdn.nba.com/headshots/nba/latest/1040x760/203076.png", bio: "Born on March 11, 1993, Anthony Davis is an American professional basketball player known for his exceptional skills as a power forward and center. A key player for the Los Angeles Lakers in the NBA, Davis has earned multiple All-Star selections and played a pivotal role in the Lakers' 2020 NBA championship victory alongside LeBron James."),
    Player(name: "Rui Hachimura", age: "25", picture: "https://a.espncdn.com/combiner/i?img=/i/headshots/nba/players/full/4066648.png&w=350&h=254", bio: "Born on February 8, 1998, Rui Hachimura is a Japanese professional basketball player who made history as the first Japanese-born player selected in the first round of the NBA Draft when the Washington Wizards chose him in 2019. A versatile forward, Hachimura has quickly become a prominent figure in the league, showcasing his scoring ability and contributing to the global growth of basketball in Japan."),
    Player(name: "Austin Reaves", age: "25", picture: "https://a.espncdn.com/combiner/i?img=/i/headshots/nba/players/full/4066457.png&w=350&h=254", bio: "Austin Reaves is a professional basketball player born on May 29, 1998. After going undrafted in the 2021 NBA Draft, Reaves signed a two-way contract with the Los Angeles Lakers, and he quickly gained attention for his scoring and playmaking abilities during his rookie season.")
    ],
    awayRoster: [
    Player(name: "Stephen Curry", age: "35", picture: "https://cdn.nba.com/headshots/nba/latest/1040x760/201939.png", bio: "Stephen Curry, born on March 14, 1988, is an American professional basketball player widely regarded as one of the greatest shooters in NBA history. Spending his entire career with the Golden State Warriors, Curry has revolutionized the game with his exceptional three-point shooting, leading his team to multiple NBA championships and earning multiple MVP awards for his outstanding contributions to the sport."),
    Player(name: "Draymond Green", age: "33", picture:
            "https://a.espncdn.com/combiner/i?img=/i/headshots/nba/players/full/6589.png&w=350&h=254", bio: "Born on March 4, 1990, Draymond Green is an accomplished American professional basketball player known for his defensive prowess and versatility. A key member of the Golden State Warriors, Green has played a pivotal role in the team's success, contributing to multiple NBA championships and earning multiple All-Star selections with his unique skill set as a forward and center."),
    Player(name: "Klay Thompson", age: "33", picture:
            "https://a.espncdn.com/combiner/i?img=/i/headshots/nba/players/full/6475.png&w=350&h=254", bio: "Born on March 4, 1990, Draymond Green is an accomplished American professional basketball player known for his defensive prowess and versatility. A key member of the Golden State Warriors, Green has played a pivotal role in the team's success, contributing to multiple NBA championships and earning multiple All-Star selections with his unique skill set as a forward and center."),
    Player(name: "Klay Thompson", age: "33", picture:
            "https://a.espncdn.com/combiner/i?img=/i/headshots/nba/players/full/6475.png&w=350&h=254", bio: "Born on February 8, 1990, Klay Thompson is an American professional basketball player celebrated for his exceptional shooting skills. As a vital member of the Golden State Warriors, Thompson has been instrumental in the team's success, contributing to multiple NBA championships while earning All-Star honors with his sharpshooting prowess as a guard.")
    ])]
//),
//    Game(sport: "Hockey",
//         image:"https://upload.wikimedia.org/wikipedia/commons/thumb/9/9d/Cornell_%22C%22_logo.svg/1587px-Cornell_%22C%22_logo.svg.png", gender: "Men's", location: "Bartels", dateTime: Date.now.addingTimeInterval(86400), awayLogo:"https://upload.wikimedia.org/wikipedia/commons/thumb/f/f5/Boston_University_seal.svg/1200px-Boston_University_seal.svg.png", away:"BU", num_tickets: 100, tickets: [], usersAttending: [])]

