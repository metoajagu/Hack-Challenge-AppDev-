//
//  File.swift
//  Sportify
//
//  Created by Meto Ajagu on 11/30/23.
//

import SwiftUI
import Alamofire

struct NetworkingManager {
    
   static let shared = NetworkingManager()
    
    private init() {    }
    
    func fetchRoster(sport: String, completion: @escaping ([Game]) -> Void) {
//        Make Endpoint URL
        let endpoint = "http://34.48.20.64/games/\(sport)"
//        Create Parameters
//        let parameters: Parameters = [
//            "sport": event.sport,
//            "sex": event.gender,
//            "date_time": event.dateTime,
//            "location": event.location,
//            "away_team_logo": event.awayLogo,
//            "away_team_name": event.away,
//            "num_tickets": event.num_tickets,
//            "tickets": event.tickets,
//            "users_attending": event.usersAttending
//        ]
//        Create JSON Decoder
        let decoder = JSONDecoder()
//        Create Request
        AF.request(endpoint, method: .get)
            .validate()
            .responseDecodable(of: [Game].self, decoder:decoder) {
                response in
                
                switch response.result {
                case .success(let events):
                    print("Succesfully fetched \(events.count)")
                    completion(events)
                case .failure(let error):
                    print("Error in NetworkManager.fetchRoster: \(error.localizedDescription)")
                }
            }
        
    }
    
    func sendRequest(event: Game, completion: @escaping (Game) -> Void) {
//        Specify endpoint
        let endpoint = "http://34.48.20.64/"
        
//        Create Parameters:
        let parameters: Parameters = [
            "sport": event.sport,
            "sex": event.gender,
            "location": event.location
        ]
//        Create decoder
        let decoder = JSONDecoder()
        
        AF.request(endpoint, method: .post, parameters: parameters)
            .validate()
            .responseDecodable(of: Game.self, decoder: decoder) {
                response in
                switch response.result {
                case .success(let event):
                    print("Successfully added game \(event.sport), \(event.gender) and \(event.location)")
                    completion(event)
                case .failure(let error):
                    print("Error in NetworkManager.sendRequest:\(error.localizedDescription)")
                }
            }
        
    }
    
}




