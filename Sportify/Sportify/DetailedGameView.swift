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
    
    //    @StateObject private var vm = TimerView()
    //    private let timer = Timer.publish(every: 1, on: .main, in: .common).autoconnect()
    //    private let width: Double = 250
    
    init(game: Game) {
        self.game = game
        _minRemaining = State(initialValue: getMinutesDifferenceFromTwoDates(start: Date.now, end: game.dateTime))
    }
    
    var body: some View {
        //NavigationStack{
        VStack{
            HStack{
                
                WebImage(url: URL(string: "https://upload.wikimedia.org/wikipedia/commons/thumb/9/9d/Cornell_%22C%22_logo.svg/1587px-Cornell_%22C%22_logo.svg.png"))
                    .resizable()
                    .scaledToFit()
                    .frame(width: 90, height: 90, alignment: .leading)
                
                
                Text("VS.")
                    .font(.title)
                
                WebImage(url: URL(string: game.awayLogo))
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
                // hstack
                
            }
            Text("\(game.gender) \(game.sport)")
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
            VStack {
                
                //
                //            ForEach(games) { game in
                //                NavigationLink (
                //                    //make a new detailed player view
                //                    destination: DetailedPlayerView(),
                //                    label: {
                //                        VStack{
                //                            Spacer()
                //
                //                            HStack {
                //                                Spacer()
                //                                //For each loop for every player on the home roster, then the away roster
                //
                //                                WebImage(url: URL(string: ))
                //                                 .resizable()
                //                                 .scaledToFit()
                //                                 .frame(width: 50, height: 50)
                //                                }
                //
                //                                    .resizable()
                //                                    .scaledToFit()
                //                                    .frame(width: 50, height: 50)
                //                                Text(game.gender)
                //                                Text("\(game.sport) vs.")
                //                                Text("\(game.away)")
                //                                Image(systemName: "chevron.right")
                //                                    .font(.system(size: 20, weight: .bold))
                //
                //                                Spacer()
                //                            }
                //                            HStack {
                //
                //                                Text("\(game.location) -")
                //                                    .multilineTextAlignment(.leading)
                //                                Text("\(game.dateTime.formatted(date: .long, time: .shortened))")
                //                            }
                //                            Spacer()
                //
                //                        }
                //                        .background {
                //                            RoundedRectangle(cornerRadius: 4)
                //                                .fill(Color.cellBackground)
                //                                .stroke(Color.black, lineWidth: 2)
                //                        }
                //                        .padding()
                //                    }
                //                ).buttonStyle(PlainButtonStyle())
                //            }
                //        }
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
