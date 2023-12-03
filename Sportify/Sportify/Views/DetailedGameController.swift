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
    let viewModel = RosterViewModel()
    var body: some View {
        
        NavigationStack{
            
            VStack{
                ScrollView(.vertical){
                    //whichever sport button it interacted with
                    HStack {
                        Text(sportType)
                            .navigationBarBackButtonHidden(true)
                            .font(.largeTitle)
                            .fontWeight(.bold)
                            .frame(width: 200, height: 100, alignment: .center)
                        if (sportType == "Hockey"){
                            Image(systemName: "figure.hockey")
                                .font(.system(size: 50, weight: .bold))
                        }
                        if (sportType == "Basketball"){
                            Image(systemName: "basketball")
                                .font(.system(size: 50, weight: .bold))
                        }
                        if (sportType == "Tennis"){
                            Image(systemName: "figure.tennis")
                                .font(.system(size: 50, weight: .bold))
                        }
                        if (sportType == "Soccer"){
                            Image(systemName: "figure.soccer")
                                .font(.system(size: 50, weight: .bold))
                        }
                        if (sportType == "Football"){
                            Image(systemName: "football")
                                .font(.system(size: 50, weight: .bold))
                        }
                    }
                    HStack{
                        Spacer()
                        Button("Men's \(sportType)"){
                            
                        }
                        .padding()
                        .background(.gray)
                        .foregroundStyle(.white)
                        .clipShape(Capsule())
                        Spacer()
                        if sportType != "Football"{
                            Button("Women's \(sportType)"){}
                                .padding()
                                .background(.gray)
                                .foregroundStyle(.white)
                                .clipShape(Capsule())
                        }
                        
                        Spacer()
                        
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
                        //What happens if there aren't any upcoming or current events???
                        
                        //Implement filter for genders
                        ForEach(viewModelC.games.filter({$0.sport == sportType})) { game in
                            NavigationLink (
                                destination: DetailedGameView(event: event),
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
                                            //  .multilineTextAlignment(.leading)
                                            Text("7 - 0")
                                            //   .font(.headl)
                                            
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
                    .onAppear(){
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
                        ForEach(viewModelF.games.filter({$0.sport == sportType})) { game in
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
                                            //  .multilineTextAlignment(.leading)
                                            Text("7 - 0")
                                            //   .font(.headl)
                                            
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
                    .onAppear(){
                        viewModelF.fetchData()
                    }
                       
                        
                        // Spacer()
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

