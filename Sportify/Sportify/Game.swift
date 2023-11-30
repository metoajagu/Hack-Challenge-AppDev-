//
//  Game.swift
//  Sportify
//
//  Created by Meto Ajagu on 11/29/23.
//

import SwiftUI

struct Game: Hashable {
    let id: Int
    let sport: String
    let gender: String
    let location: String
    let dateTime: Date
    let teams: [String]
    let num_tickets: Int
    let users_attending: [Profile]
}

var games: [Game] = [Game(id: 1, sport: "Basketball", gender: "Men's", location: "Bartels", dateTime: Date(), teams: ["Cornell", "Harvard"], num_tickets: 200, users_attending: []),
    Game(id: 2, sport: "Soccer", gender: "Men's", location: "Bartels", dateTime: Date(), teams: ["Cornell", "Princeton"], num_tickets: 100, users_attending: []),
    Game(id: 2, sport: "Hockey", gender: "Men's", location: "Bartels", dateTime: Date(), teams: ["Cornell", "Princeton"], num_tickets: 100, users_attending: [])]

