//
//  Ticket.swift
//  Sportify
//
//  Created by Meto Ajagu on 11/30/23.
//

import SwiftUI

struct Ticket: Codable, Identifiable {
    let id: Int
    let name: String
    let age: String
    let netid: String
    let seatNumber: Int
}
