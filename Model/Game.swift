//
//  Game.swift
//  Sportify
//
//  Created by Meto Ajagu on 11/18/23.
//

import Foundation

struct Game: Hashable {
    let sportName: String
    let sportTeam: String
    let score: Float
    let location: String
    let schoolLogo: String
    let sportLogo: String
    let date: String
}

var games: [Game] = []
