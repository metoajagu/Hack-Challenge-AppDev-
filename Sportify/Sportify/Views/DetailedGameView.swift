//
//  DetailedGameView.swift
//  Sportify
//
//  Created by Charles Liggins on 12/1/23.
//

import SwiftUI
import UIKit
import SDWebImageSwiftUI
import SDWebImage


struct DetailedGameView: View {
    @Environment(\.presentationMode) private var presentationMode: Binding<PresentationMode>
    let game: Game
    
    @State private var minRemaining: Int
    @State private var secRemaining = 59
    let timer = Timer.publish(every: 1, on: .main, in: .common).autoconnect()
    

    init(game: Game) {
        self.game = game
        _minRemaining = State(initialValue: getMinutesDifferenceFromTwoDates(start: Date.now, end: game.date_time))
    }
    
    var body: some View {
        VStack{
            ScrollView(.vertical){
                HStack{
                    
                    WebImage(url: URL(string: "https://upload.wikimedia.org/wikipedia/commons/thumb/9/9d/Cornell_%22C%22_logo.svg/1587px-Cornell_%22C%22_logo.svg.png"))
                        .resizable()
                        .scaledToFit()
                        .frame(width: 90, height: 90, alignment: .leading)
                    
                    
                    Text("VS.")
                        .font(.title)
                    
                    WebImage(url: URL(string: game.away_team_logo))
                        .resizable()
                        .scaledToFit()
                        .frame(width: 90, height: 90, alignment: .leading)
                    
                        .navigationBarBackButtonHidden(true)
                        .toolbar(content: {
                            ToolbarItem (placement: .bottomBar)  {
                                
                                Button(action: {
                                    presentationMode.wrappedValue.dismiss()
                                }, label: {
                                    Image(systemName: "house")
                                        .foregroundColor(.black)
                                    Text("home")
                                        .foregroundColor(.black)
                                })
                            }
                        })
                    
                }
                Text("\(game.sex) \(game.sport)")
                    .font(.title)
                
                //Location and date
                Spacer()
                
                HStack{
                    Text("Time Left: \(minRemaining): \(secRemaining)")
                        .font(.title2)
                    Divider()
                        .frame(height: 40)
                    Text("Location: \(game.location)")
                        .font(.title2)
                }
                Text("Stats")
                    .font(.title)
                Divider()
                
                Text("Lineup")
                    .font(.title)
                Divider()
                
                HStack {
//                    ForEach(games) { game in
                        VStack{
                            ForEach(game.home_roster) { player in
                                NavigationLink (
                                    destination:DetailedPlayerView(player: player),
                                    label: {
                                        HStack{
                                            WebImage(url: URL(string: player.picture))
                                                .resizable()
                                                .scaledToFit()
                                                .frame(width: 50, height: 50)
                                            VStack{
                                                Text("\(player.name)")
                                                    .font(.subheadline)
                                                Text("Age: \(player.age)")
                                                    .font(.subheadline)
                                            }
                                        }
                                    }).buttonStyle(PlainButtonStyle())
                                
                                Divider()
                            }
                        }
//                  }
                    
                    VStack {
//                        ForEach(games) { game in
                            ForEach(game.away_roster) { player in
                                NavigationLink (destination:DetailedPlayerView(player: player),
                                                label: {
                                    HStack{
                                        WebImage(url: URL(string: player.picture))
                                            .resizable()
                                            .scaledToFit()
                                            .frame(width: 50, height: 50)
                                        VStack{
                                            Text("\(player.name)")
                                                .font(.subheadline)
                                            Text("Age: \(player.age)")
                                                .font(.subheadline)
                                        }
                                    }
                                }).buttonStyle(PlainButtonStyle())
                                Divider()
                            }
                        }
                    }
//              }
                Spacer()
                Spacer()
                Spacer()
                Spacer()
                Spacer()
                Spacer()
                
            }.onReceive(timer) {
                time in
                if minRemaining >= 0 && secRemaining > 0{
                    secRemaining -= 1
                    if secRemaining == 0 && minRemaining >= 1 {
                        minRemaining -= 1
                        secRemaining += 59
                    }
                }
            }
        }
    }
}



private func getMinutesDifferenceFromTwoDates(start: Date, end: Date) -> Int
   {

       let diff = Int(end.timeIntervalSince1970 - start.timeIntervalSince1970)

       let hours = diff / 3600
       let minutes = (diff - hours * 3600) / 60
       return minutes
   }

#Preview {
    ContentView()
}
