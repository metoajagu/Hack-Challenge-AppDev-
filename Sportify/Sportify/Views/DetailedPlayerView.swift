//
//  DetailedPlayerView.swift
//  Sportify
//
//  Created by Charles Liggins on 12/1/23.
//

import SwiftUI

struct DetailedPlayerView: View {
    @Environment(\.presentationMode) private var presentationMode: Binding<PresentationMode>
    let player: Player
    
    var body: some View {
        VStack{
            ScrollView(.vertical){
                
                Text("PLAYER VIEW")
            }
        }
    }
    
}
