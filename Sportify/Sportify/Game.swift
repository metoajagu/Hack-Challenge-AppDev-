//
//  Game.swift
//  Sportify
//
//  Created by Meto Ajagu on 11/29/23.
//

import SwiftUI

struct Game: Hashable, Identifiable {
    let id: Int
    let sport: String
    let gender: String
    let location: String
    let dateTime: Date
    let teams: [School]
    let num_tickets: Int
    let users_attending: [Profile]
}

var games: [Game] = [Game(id: 1, sport: "Basketball", gender: "Men's", location: "Bartels", dateTime: Date(), teams: [School(id: 4, name: "Cornell", schoolLogo: "https://upload.wikimedia.org/wikipedia/commons/thumb/9/9d/Cornell_%22C%22_logo.svg/1587px-Cornell_%22C%22_logo.svg.png"), School(id: 5, name: "Harvard", schoolLogo: "https://upload.wikimedia.org/wikipedia/commons/thumb/7/76/Harvard_Crimson_logo.svg/1737px-Harvard_Crimson_logo.svg.png")], num_tickets: 200, users_attending: []),
    Game(id: 2, sport: "Soccer", gender: "Men's", location: "Bartels", dateTime: Date(), teams: [School(id: 6, name: "Cornell", schoolLogo: "https://upload.wikimedia.org/wikipedia/commons/thumb/9/9d/Cornell_%22C%22_logo.svg/1587px-Cornell_%22C%22_logo.svg.png"), School(id: 7, name: "Princeton", schoolLogo: "")], num_tickets: 100, users_attending: []),
    Game(id: 2, sport: "Hockey", gender: "Men's", location: "Bartels", dateTime: Date(), teams: [School(id: 8, name: "Cornell", schoolLogo: "https://upload.wikimedia.org/wikipedia/commons/thumb/9/9d/Cornell_%22C%22_logo.svg/1587px-Cornell_%22C%22_logo.svg.png"), School(id: 9, name: "Boston University", schoolLogo: "")], num_tickets: 100, users_attending: [])]

