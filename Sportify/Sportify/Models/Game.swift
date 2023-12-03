//
//  Game.swift
//  Sportify
//
//  Created by Meto Ajagu on 11/29/23.
//

import SwiftUI

struct Game: Codable, Identifiable{
  
    
    let id = UUID()
    let sport: String
    let sex: String
    let location: String
    let date_time: Date
    let away_team_logo: String
    let away_team_name: String
    let num_tickets: Int
    let tickets: [Ticket]
    let users_attending: [Profile]
    let home_roster: [Player]
    let away_roster: [Player]
}

var games: [Game] = [Game(
    sport: "Basketball",
    sex: "Men's",
    location: "Bartels",
    date_time: Date(),
    away_team_logo: "https://upload.wikimedia.org/wikipedia/commons/thumb/b/b7/Harvard_Crimson_logo_2020.svg/640px-Harvard_Crimson_logo_2020.svg.png",
    away_team_name: "Harvard",
    num_tickets: 200,
    tickets: [],
    users_attending: [],
    home_roster: [],
    away_roster: []
)]
