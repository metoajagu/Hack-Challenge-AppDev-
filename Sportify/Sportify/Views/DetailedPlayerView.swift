//
//  DetailedPlayerView.swift
//  Sportify
//
//  Created by Charles Liggins on 12/1/23.
//

import SwiftUI
import SDWebImage
import SDWebImageSwiftUI

struct DetailedPlayerView: View {
    @Environment(\.presentationMode) private var presentationMode: Binding<PresentationMode>
    let player: Player
    
    var body: some View {
        VStack{
            ScrollView(.vertical){
                Spacer()
                WebImage(url: URL(string: player.picture))
                    .resizable()
                    .scaledToFit()
                    .frame(width: 300, height: 300)
                Text("\(player.name) - Age: \(player.age)")
                    .font(.title)
                
                Divider()
                
                Text("About \(player.name):")
                
                Spacer()
                
                Text("\(player.bio)")
                
            }
        }
    }
    
}
