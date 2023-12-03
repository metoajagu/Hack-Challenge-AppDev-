//
//  File.swift
//  Sportify
//
//  Created by Meto Ajagu on 11/30/23.
//



import Alamofire


class NetworkingManager {
    
    static let shared = NetworkingManager()

  //  private init() {    }
    
    func fetchRoster(completion: @escaping ([Game]) -> Void) {
//        Make Endpoint URL
//        change to /(Sports)
        let endpoint = "http://34.48.20.64/games/basketball"
        
//        Create JSON Decoder
        
//        let decoder = JSONDecoder()
//        Create Request
        
        AF.request(endpoint, method: .get)
            .validate()
            .responseDecodable(of: [Game].self/*, decoder:decoder*/) {
                response in
                
                switch response.result {
                case .success(let events):
                    print("Succesfully fetched \(events.count)")
                    completion(events)
                case .failure(let error):
                    print("Error in NetworkManager.fetchRoster: \(error.localizedDescription)")
                    print(String(describing: error))
                }
        
//        guard let url = Bundle.main.url(forResource: "data", withExtension: "json") else {
//            print("Failed to find JSON file")
//            completion([])
//            return
//            }
//        URLSession.shared.dataTask(with: url) { data,_ , error in
//            if let error = error {
//                print("Error fetching data: \(error.localizedDescription)")
//                completion([])
//                return
//                
//            }
//            
//            guard let jsonData = data else {
//                print("No data found")
//                completion([])
//                return
//            }
//            
//            do {
//                let decoder = JSONDecoder()
//                let decodedData = try decoder.decode([Game].self, from: jsonData)
//                completion(decodedData)
//            } catch {
//                print("Error decoding JSON: \(error.localizedDescription)")
//                completion([])
//            }
//            
//            
        }.resume()
        
        
    }
    
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

    
}




