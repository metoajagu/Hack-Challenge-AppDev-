//
//  DetailedGameController.swift
//  Sportify
//
//  Created by Meto Ajagu on 11/29/23.
//
import SwiftUI
import SDWebImageSwiftUI
import SDWebImage

struct DetailedGameController: View {
    @Environment(\.presentationMode) private var presentationMode: Binding<PresentationMode>
    let sportType: String
    
    var body: some View {
        
        NavigationStack{
            
            VStack{
               
                //whichever sport button it interacted with
                HStack{
                    Text(sportType)
                        .navigationBarBackButtonHidden(true)
                        .font(.headline)
                        .fontWeight(.bold)
                        .frame(width: 500, height: 100)
                        .background(Rectangle().fill(Color.red).shadow(radius: 3))
                }
                Text("Current Events")
                    .font(.largeTitle)
                    .foregroundColor(.red)
                    .fontWeight(.bold)
                    .padding()
                                
                List(games.filter({$0.sport == sportType})) { game in
                    VStack {
                        HStack {
                            WebImage(url: URL(string: game.awayLogo))
                                .resizable()
                                .scaledToFit()
                                .frame(width: 50, height: 50, alignment: .leading)
                            Text(game.gender)
                            Text("\(game.sport) vs")
                            Text(game.away)
                            
                        }
                    }
                }
                
                Text("Upcoming Events")
                    .font(.largeTitle)
                    .foregroundColor(.red)
                    .fontWeight(.bold)
                    .padding()
                
                Spacer()
                          .navigationBarBackButtonHidden(true)
                      .toolbar(content: {
                          ToolbarItem (placement: .bottomBar)  {
                                   
                              Button(action: {
                                  presentationMode.wrappedValue.dismiss()
                              }, label: {
                                //  Image(systemName: "arrow.left")
                                  Image(systemName: "house")
                                  .foregroundColor(.black)
                                  Text("home")
                                      .foregroundColor(.black)
                              })
                        
                              
                            
                          }
                          })
            }
            
        }
    }
    
    
    
    private func gameInfo(_
                          game: Game) -> some View {
        
        return VStack(alignment: .leading) {
           // Text(game)
            Text(game.sport)
                .font(.headline)
                .fontWeight(.bold)
            Text(game.location)
                .font(.subheadline)
                .fontWeight(.medium)
        }
    }
}
#Preview {
    DetailedGameController(sportType: "RANDOM SPORT")
}

