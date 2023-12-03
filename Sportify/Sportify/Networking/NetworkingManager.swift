////
////  File.swift
////  Sportify
////
////  Created by Meto Ajagu on 11/30/23.
////
//
//<<<<<<< HEAD
//
//
//=======
//import SwiftUI
//>>>>>>> parent of cac72e0 (Networking File)
//import Alamofire
//
//struct NetworkingManager {
//    
//<<<<<<< HEAD
//    static let shared = NetworkingManager()
//
//  //  private init() {    }
//=======
//   static let shared = NetworkingManager()
//    
//    private init() {    }
//>>>>>>> parent of cac72e0 (Networking File)
//    
//    func fetchRoster(sport: String, completion: @escaping ([Game]) -> Void) {
////        Make Endpoint URL
//<<<<<<< HEAD
////        change to /(Sports)
//        let endpoint = "http://34.48.20.64/games/basketball"
//        
////        Create JSON Decoder
//        
////        let decoder = JSONDecoder()
//=======
//        let endpoint = "http://34.48.20.64/games/\(sport)"
////        Create Parameters
////        let parameters: Parameters = [
////            "sport": event.sport,
////            "sex": event.gender,
////            "date_time": event.dateTime,
////            "location": event.location,
////            "away_team_logo": event.awayLogo,
////            "away_team_name": event.away,
////            "num_tickets": event.num_tickets,
////            "tickets": event.tickets,
////            "users_attending": event.usersAttending
////        ]
////        Create JSON Decoder
//        let decoder = JSONDecoder()
//>>>>>>> parent of cac72e0 (Networking File)
////        Create Request
//        
//        AF.request(endpoint, method: .get)
//            .validate()
//<<<<<<< HEAD
//            .responseDecodable(of: [Game].self/*, decoder:decoder*/) {
//=======
//            .responseDecodable(of: [Game].self, decoder:decoder) {
//>>>>>>> parent of cac72e0 (Networking File)
//                response in
//                
//                switch response.result {
//                case .success(let events):
//                    print("Succesfully fetched \(events.count)")
//                    completion(events)
//                case .failure(let error):
//                    print("Error in NetworkManager.fetchRoster: \(error.localizedDescription)")
//                }
//            }
//        
//    }
//    
//<<<<<<< HEAD
////    func sendRequest(event: Game, completion: @escaping (Game) -> Void) {
//////        Specify endpoint
////        let endpoint = "http://34.48.20.64/"
////        
//////        Create Parameters:
////        let parameters: Parameters = [
////            "sport": event.sport,
////            "sex": event.gender,
////            "location": event.location
////        ]
//////        Create decoder
////        let decoder = JSONDecoder()
////        
////        AF.request(endpoint, method: .post, parameters: parameters)
////            .validate()
////            .responseDecodable(of: Game.self, decoder: decoder) {
////                response in
////                switch response.result {
////                case .success(let event):
////                    print("Successfully added game \(event.sport), \(event.gender) and \(event.location)")
////                    completion(event)
////                case .failure(let error):
////                    print("Error in NetworkManager.sendRequest:\(error.localizedDescription)")
////                }
////            }
////        
////    }
//
//=======
//    func sendRequest(event: Game, completion: @escaping (Game) -> Void) {
////        Specify endpoint
//        let endpoint = "http://34.48.20.64/"
//        
////        Create Parameters:
//        let parameters: Parameters = [
//            "sport": event.sport,
//            "sex": event.gender,
//            "location": event.location
//        ]
////        Create decoder
//        let decoder = JSONDecoder()
//        
//        AF.request(endpoint, method: .post, parameters: parameters)
//            .validate()
//            .responseDecodable(of: Game.self, decoder: decoder) {
//                response in
//                switch response.result {
//                case .success(let event):
//                    print("Successfully added game \(event.sport), \(event.gender) and \(event.location)")
//                    completion(event)
//                case .failure(let error):
//                    print("Error in NetworkManager.sendRequest:\(error.localizedDescription)")
//                }
//            }
//        
//    }
//>>>>>>> parent of cac72e0 (Networking File)
//    
//}
//



