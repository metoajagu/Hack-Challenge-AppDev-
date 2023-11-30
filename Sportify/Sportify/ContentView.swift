//
//  ContentView.swift
//  Sportify
//
//  Created by Meto Ajagu on 11/29/23.
//

import SwiftUI
import SDWebImageSwiftUI
import SDWebImage

struct ContentView: View {
    
    @State private var score: Float = 0.0
    @State private var game: [Game] = [Game(id: 2, sport: "Basketball", gender: "Men's", location: "Bartels", dateTime: Date(), teams: ["Cornell", "Harvard"], num_tickets: 200, users_attending: [])]
    
    var body: some View {
        NavigationStack{
            VStack {
                HStack {
                    Text("Sportify")
                }
                HStack{
                    WebImage(url: URL(string: "https://upload.wikimedia.org/wikipedia/commons/thumb/9/9d/Cornell_%22C%22_logo.svg/1587px-Cornell_%22C%22_logo.svg.png"))
                        .resizable()
                        .scaledToFit()
                        .frame(width: 50, height: 50, alignment: .leading)
                    
                    
                    Text("CORNELL")
                        .font(.title)
                        .fontWidth(.expanded)
                        .foregroundColor(.red)
                        .fontWeight(.bold)
                    
                }
                
                HStack {
                    NavigationLink {
                        DetailedGameController()
                    } label: {
                        viewSoccerButton()
                    }
                    NavigationLink {
                        DetailedGameController()
                    } label: {
                        viewBasketballButton()
                    }
                    NavigationLink {
                        DetailedGameController()
                    } label: {
                        viewFootballButton()
                    }
                    NavigationLink {
                        DetailedGameController()
                    } label: {
                        viewHockeyButton()
                    }
                }
                
                VStack(alignment: .leading) {
                    Text("Current Events")
                        .font(.largeTitle)
                        .foregroundColor(.red)
                        .fontWeight(.bold)
                        .padding()
                    
                    List(games, id: \.self) { game in
                        gameInfo(game)
                    }
                }
                
                VStack(alignment: .leading) {
                    Text("Upcoming Events")
                        .font(.largeTitle)
                        .foregroundColor(.red)
                        .fontWeight(.bold)
                        .padding()
                    
                    List(games, id: \.self) { game in
                        gameInfo(game)
                    }
                }
            }
            
        }
    }
    
    private func gameInfo(_
                          game: Game) -> some View {
        
        return VStack(alignment: .leading) {
            Text(game.sport)
                .font(.headline)
                .fontWeight(.bold)
            Text(game.teams[0])
                .font(.subheadline)
                .fontWeight(.medium)
            Text(game.teams[1])
                .font(.subheadline)
                .fontWeight(.medium)
            Text(game.location)
                .font(.subheadline)
                .fontWeight(.medium)
        }
    }
    
    //    private func currentEvents(_
    //    game: Game) -> some View {
    //
    //        
    //    }
    
    //    private func upcomingEvents(_game: Game) - some View {
    //
    //    }
    private func viewSoccerButton() -> some View {
        Text("Soccer")
            .font(.subheadline)
            .fontWeight(.bold)
            .foregroundColor(.white)
            .padding(EdgeInsets(top: 12, leading: 16, bottom: 12, trailing: 16))
            .background(.red)
            .clipShape(RoundedRectangle(cornerRadius: 15))
    }
    
    private func viewBasketballButton() -> some View {
        Text("Basketball")
            .font(.subheadline)
            .foregroundColor(.white)
            .padding(EdgeInsets(top: 12, leading: 16, bottom: 12, trailing: 16))
            .background(.red)
            .clipShape(RoundedRectangle(cornerRadius: 15))
            .fontWeight(.medium)
    }
    
    private func viewFootballButton() -> some View {
        Text("Football")
            .font(.subheadline)
            .foregroundColor(.white)
            .padding(EdgeInsets(top: 12, leading: 16, bottom: 12, trailing: 16))
            .background(.red)
            .clipShape(RoundedRectangle(cornerRadius: 15))
            .fontWeight(.bold)
    }
    
    private func viewHockeyButton() -> some View {
        Text("Hockey")
            .font(.subheadline)
            .foregroundColor(.white)
            .padding(EdgeInsets(top: 12, leading: 16, bottom: 12, trailing: 16))
            .background(.red)
            .clipShape(RoundedRectangle(cornerRadius: 15))
            .fontWeight(.bold)
    }
}

#Preview {
    ContentView()
}
