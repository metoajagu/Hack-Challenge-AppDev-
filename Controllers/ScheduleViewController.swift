//
//  ContentView.swift
//  Sportify
//
//  Created by Meto Ajagu on 11/18/23.
//

import SwiftUI

struct ScheduleView: View {
    
   @State private var score: Float = 0.0
    
    var body: some View {
        NavigationStack{
            VStack {
                HStack {
                    Image("")
                    Text("Cornell University")
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
                
                Text("Current Events")
                .font(.largeTitle)
                .fontWeight(.bold)
                
                List(games, id: \.self) { game in
                    gameInfo(game)
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
            .font(.title)
            .foregroundColor(.black)
            .padding(EdgeInsets(top: 12, leading: 16, bottom: 12, trailing: 16))
            .background(.white)
            .clipShape(RoundedRectangle(cornerRadius: 15))
    }
    
    private func viewBasketballButton() -> some View {
        Text("Basketball")
            .font(.title)
            .foregroundColor(.black)
            .padding(EdgeInsets(top: 12, leading: 16, bottom: 12, trailing: 16))
            .background(.white)
            .clipShape(RoundedRectangle(cornerRadius: 15))
    }
    
    private func viewFootballButton() -> some View {
        Text("Football")
            .font(.title)
            .foregroundColor(.black)
            .padding(EdgeInsets(top: 12, leading: 16, bottom: 12, trailing: 16))
            .background(.white)
            .clipShape(RoundedRectangle(cornerRadius: 15))
    }
    
    private func viewHockeyButton() -> some View {
        Text("Hockey")
            .font(.title)
            .foregroundColor(.black)
            .padding(EdgeInsets(top: 12, leading: 16, bottom: 12, trailing: 16))
            .background(.white)
            .clipShape(RoundedRectangle(cornerRadius: 15))
    }
}

#Preview {
    ScheduleView()
}
