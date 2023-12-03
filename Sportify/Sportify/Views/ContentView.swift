
//
//  ContentView.swift
//  Sportify
//
//  Created by Meto Ajagu on 11/29/23.
//
import SwiftUI
import UIKit
import SDWebImageSwiftUI
import Alamofire
import SDWebImage
struct ContentView: View {
    
    @StateObject var viewModelC = ViewModel(type: "current")
    @StateObject var viewModelF = ViewModel(type: "future")
    
    var body: some View {
        NavigationStack {
            ScrollView(.vertical){
                VStack {
                    HStack {
                        WebImage(url: URL(string: "https://upload.wikimedia.org/wikipedia/commons/thumb/9/9d/Cornell_%22C%22_logo.svg/1587px-Cornell_%22C%22_logo.svg.png"))
                            .resizable()
                            .scaledToFit()
                            .frame(width: 50, height: 50, alignment: .leading)
                        
                        Text("CORNELL")
                            .font(.title)
                            .foregroundColor(.black)
                            .fontWeight(.bold)
                    }
                    
                    ScrollView(.horizontal) {
                        HStack {
                            Spacer()
                            NavigationLink {
                                DetailedGameController(sportType:"Soccer")
                            } label: {
                                viewSoccerButton()
                            }
                            NavigationLink {
                                DetailedGameController(sportType:"Basketball")
                            } label: {
                                viewBasketballButton()
                            }
                            NavigationLink {
                                DetailedGameController(sportType:"Football")
                            } label: {
                                viewFootballButton()
                            }
                            NavigationLink {
                                DetailedGameController(sportType:"Hockey")
                            } label: {
                                viewHockeyButton()
                            }
                            NavigationLink {
                                DetailedGameController(sportType:"Tennis")
                            } label: {
                                viewTennisButton()
                            }
                            Spacer()
                        }
                    }
                    
                    VStack(alignment: .leading) {
                        VStack(spacing: 0){
                            Text("Current Events")
                                .font(.largeTitle)
                                .foregroundColor(.black)
                                .frame(width: 350, height: 50, alignment: .leading)
                                .fontWeight(.bold)
                            
                            Divider()
                      }
                    
                        
                        ForEach(viewModelC.games) { game in
                            NavigationLink (
                                destination: DetailedGameView(game: game),
                                label: {
                                    VStack{
                                        Spacer()
                                        HStack {
                                            Spacer()
                                            WebImage(url: URL(string: game.away_team_logo))
                                                .resizable()
                                                .scaledToFit()
                                                .frame(width: 50, height: 50)
                                            Text(game.sex)
                                            Text("\(game.sport) vs.")
                                            Text("\(game.away_team_name)")
                                            Image(systemName: "chevron.right")
                                                .font(.system(size: 20, weight: .bold))
                                            
                                            Spacer()
                                        }
                                        HStack {
                                            
                                            Text("\(game.location) ")
                                            Text("-")
                                                .bold()
                                            Text("7 - 0")
                                        }
                                        Spacer()
                                    }
                                    .background {
                                        RoundedRectangle(cornerRadius: 4)
                                            .fill(Color.cellBackground)
                                            .stroke(Color.black, lineWidth: 2)
                                    }
                                    .padding()
                                }
                            ).buttonStyle(PlainButtonStyle())
                           
                        }
}
                  .onAppear {
                      viewModelC.fetchData()
}
VStack(alignment: .leading) {
                        VStack(spacing: 0){
                            Text("Upcoming Events")
                                .font(.largeTitle)
                                .foregroundColor(.black)
                                .frame(width: 350, height: 50, alignment: .leading)
                                .fontWeight(.bold)
                            
                            Divider()
                            
                        }
                        
                        ForEach(viewModelF.games) { game in
                            NavigationLink (
                                destination: DetailedGameView(game: game),
                                label: {
                                    VStack{
                                        Spacer()
                                        HStack {
                                            Spacer()
                                            WebImage(url: URL(string: game.away_team_logo))
                                                .resizable()
                                                .scaledToFit()
                                                .frame(width: 50, height: 50)
                                            Text(game.sex)
                                            Text("\(game.sport) vs.")
                                            Text("\(game.away_team_name)")
                                            Image(systemName: "chevron.right")
                                                .font(.system(size: 20, weight: .bold))
                        
                                            Spacer()
                                        }
                                        HStack {
                                            
                                            Text("\(game.location) -")
                                                .multilineTextAlignment(.leading)
                                            Text("\(game.date_time.formatted(date: .long, time: .shortened))")
                                        }
                                        Spacer()
                                    }
                                    .background {
                                        RoundedRectangle(cornerRadius: 4)
                                            .fill(Color.cellBackground)
                                            .stroke(Color.black, lineWidth: 2)
                                    }
                                    .padding()
                                }
                            ).buttonStyle(PlainButtonStyle())
                        }
                    } .onAppear() {
                        viewModelF.fetchData()
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
            Text(game.location)
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
            .background(Color.sportBackground)
            .clipShape(RoundedRectangle(cornerRadius: 15))
    }
    
    private func viewTennisButton() -> some View {
        Text("Tennis")
            .font(.subheadline)
            .fontWeight(.bold)
            .foregroundColor(.white)
            .padding(EdgeInsets(top: 12, leading: 16, bottom: 12, trailing: 16))
            .background(Color.sportBackground)
            .clipShape(RoundedRectangle(cornerRadius: 15))
    }
    
    private func viewBasketballButton() -> some View {
        Text("Basketball")
            .font(.subheadline)
            .fontWeight(.bold)
            .foregroundColor(.white)
            .padding(EdgeInsets(top: 12, leading: 16, bottom: 12, trailing: 16))
            .background(Color.sportBackground)
            .clipShape(RoundedRectangle(cornerRadius: 15))
    }
    
    private func viewFootballButton() -> some View {
        Text("Football")
            .font(.subheadline)
            .fontWeight(.bold)
            .foregroundColor(.white)
            .padding(EdgeInsets(top: 12, leading: 16, bottom: 12, trailing: 16))
            .background(Color.sportBackground)
            .clipShape(RoundedRectangle(cornerRadius: 15))
    }
    
    private func viewHockeyButton() -> some View {
        Text("Hockey")
            .font(.subheadline)
            .fontWeight(.bold)
            .foregroundColor(.white)
            .padding(EdgeInsets(top: 12, leading: 16, bottom: 12, trailing: 16))
            .background(Color.sportBackground)
            .clipShape(RoundedRectangle(cornerRadius: 15))
    }
}
#Preview {
    ContentView()
}
