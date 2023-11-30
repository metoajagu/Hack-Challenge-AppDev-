//
//  Game.swift
//  Sportify
//
//  Created by Meto Ajagu on 11/29/23.
//

import SwiftUI

struct Game: Hashable {
    let id: Int
    let sportLogo: String
    let sport: String
    let gender: String
    let location: String
    let date_time: Date
    let teams: [String]
    let num_tickets: Int
    let users_attending: [Profile]
}

var dummyData: Game = Game(id: 1, sportLogo: "https://upload.wikimedia.org/wikipedia/en/thumb/9/9b/Cornell_Big_Red_logo.svg/640px-Cornell_Big_Red_logo.svg.png", sport: "Basketball", gender: "Men's", location: "Bartels", date_time: Date(), teams: ["Cornell", "Harvard"], num_tickets: 200, users_attending: [])
var games: [Game] = []

