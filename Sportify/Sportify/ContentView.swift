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
                
                VStack(alignment: .leading){
                    Text("Current Events")
                    .font(.largeTitle)
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
        
        VStack(){
            Image(game.sportLogo)
            Text(game.sportName)
                .font(.headline)
                .fontWeight(.bold)
            Text(game.sportTeam)
                .font(.subheadline)
                .fontWeight(.medium)
        }
    }
    
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
