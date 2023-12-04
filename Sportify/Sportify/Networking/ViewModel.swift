//
//  ViewModel.swift
//  Sportify
//
//  Created by Charles Liggins on 12/1/23.
//


import Foundation
import SwiftUI
import Alamofire

class ViewModel: ObservableObject {
    
    @Published var games: [Game] = []

    let current = "http://34.48.20.64/games/current/"
    let mCurrent = "34.48.20.64/games/Mens/current/"
    let fCurrent = "34.48.20.64/games/Womens/current/"
    
    let mFuture = "34.48.20.64/games/Mens/future/"
    let fFuture = "34.48.20.64/games/Womens/future/"
    let future = "http://34.48.20.64/games/future/"
    
    let signIn = ""
    
    
    var type: String
    
    init(type: String){
        self.type = type
    }
    
    func fetchData() {
           
           let decoder = JSONDecoder()
           decoder.dateDecodingStrategy = .iso8601
           
           AF.request("http://34.48.20.64/games/\(type)", method: .get)
               .responseDecodable(of: [Game].self,decoder: decoder) { response in
                   switch response.result {
                   case .success(let result):
                       print("Success")
                       DispatchQueue.main.async {
                           self.games = result
                       }
                   case .failure(let error):
                       print("Error: \(error)")
            }
        }
    }
    
    func authenticateUser(email: String, password: String, completion: @escaping (Profile) -> Void){
        
        let decoder = JSONDecoder()
        
        let parameters: Parameters = [
              "email": email,
              "password": password
          ]

        AF.request(signIn, method: .post, parameters: parameters)
            .validate()
            .responseDecodable(of: Profile.self, decoder: decoder) { response in
                switch response.result {
                case .success(let post):
                    print("Successfully logged in \(email)")
                    completion(post)
                case .failure(let error):
                    print("Error in login: \(error.localizedDescription)")
                }
            }
    }
// end
   }


    

