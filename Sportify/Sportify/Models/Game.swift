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
    let sex: String
    let date_time: Date
    let location: String
    let away_team_logo: String
    let away_team_name: String
    let num_tickets: Int
//    let image: String
    var tickets: [Ticket] = []
    let users_attending: [Profile] = []
//    let homeRoster: [Player]
//    let awayRoster: [Player]
}

//struct Game: Codable, Identifiable {
//    let id = UUID()
//    let sport: String
//    let image: String
//    let sex: String
//    let location: String
//    let dateTime: Date
//    let awayLogo: String
//    let away: String
//    let num_tickets: Int
//    let tickets: [Ticket]
//    let usersAttending: [Profile]
//    let homeRoster: [Player]
//    let awayRoster: [Player]
//}


//ZZvar games: [Game] = [Game(
//ZZ    sport: "Basketball",
//ZZ    image:"https://upload.wikimedia.org/wikipedia/commons/thumb/9/9d/Cornell_%22C%22_logo.svg/1587px-Cornell_%22C%22_logo.svg.png",
//ZZ    sex: "Men's",
//ZZ    location: "Bartels",
//ZZ    dateTime: Date(),
//ZZ    awayLogo: "https://upload.wikimedia.org/wikipedia/commons/thumb/b/b7/Harvard_Crimson_logo_2020.svg/640px-Harvard_Crimson_logo_2020.svg.png",
//ZZ    away: "Harvard",
//ZZ    num_tickets: 200,
//ZZ    tickets: [],
//ZZ    usersAttending: [],
//ZZ    homeRoster: [players[0],players[1],players[2],players[3]],
//ZZ    awayRoster: [players[4],players[5],players[6],players[7]]
//ZZ)]
//),
//    Game(sport: "Hockey",
//         image:"https://upload.wikimedia.org/wikipedia/commons/thumb/9/9d/Cornell_%22C%22_logo.svg/1587px-Cornell_%22C%22_logo.svg.png", sex: "Men's", location: "Bartels", dateTime: Date.now.addingTimeInterval(86400), awayLogo:"https://upload.wikimedia.org/wikipedia/commons/thumb/f/f5/Boston_University_seal.svg/1200px-Boston_University_seal.svg.png", away:"BU", num_tickets: 100, tickets: [], usersAttending: [])]

