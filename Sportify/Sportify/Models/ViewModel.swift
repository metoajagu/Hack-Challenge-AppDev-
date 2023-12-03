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

    
       func fetchData() {
           
           let decoder = JSONDecoder()
           decoder.dateDecodingStrategy = .iso8601
           
           
           AF.request("http://34.48.20.64/games/", method: .get)
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
}


    

