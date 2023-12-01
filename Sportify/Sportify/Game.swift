//
//  Game.swift
//  Sportify
//
//  Created by Meto Ajagu on 11/29/23.
//

import SwiftUI

struct Game: Hashable, Identifiable {
    let id = UUID()
    let sport: String
    let image: String
    let gender: String
    let location: String
    let dateTime: Date
    let awayLogo: String
    let away: String
    let num_tickets: Int
    let users_attending: [Profile]
}

var games: [Game] = [Game(sport: "Basketball", image:"https://upload.wikimedia.org/wikipedia/commons/thumb/9/9d/Cornell_%22C%22_logo.svg/1587px-Cornell_%22C%22_logo.svg.png",gender: "Men's", location: "Bartels", dateTime: Date(), awayLogo: "https://upload.wikimedia.org/wikipedia/commons/thumb/b/b7/Harvard_Crimson_logo_2020.svg/640px-Harvard_Crimson_logo_2020.svg.png", away: "Harvard", num_tickets: 200, users_attending: []),
                     Game(sport: "Hockey", image:"https://upload.wikimedia.org/wikipedia/commons/thumb/9/9d/Cornell_%22C%22_logo.svg/1587px-Cornell_%22C%22_logo.svg.png", gender: "Men's", location: "Bartels", dateTime: Date(), awayLogo:"https://upload.wikimedia.org/wikipedia/commons/thumb/f/f5/Boston_University_seal.svg/1200px-Boston_University_seal.svg.png", away:"BU", num_tickets: 100, users_attending: [])]

