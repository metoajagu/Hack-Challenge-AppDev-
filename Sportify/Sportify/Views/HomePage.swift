//
//  HomePage.swift
//  Sportify
//
//  Created by Charles Liggins on 12/3/23.
//

import SwiftUI
struct HomePage: View {
    
    @State private var netid: String = ""
    @State private var password: String = ""
    
    var body: some View {
        VStack{
            
            HStack{
                Text("NetID")
                TextField("Enter NetID: ", text: $netid)
            }
            
            HStack{
                Text("Password")
                TextField("Enter Password: ", text: $password)
            }
            
            Button("Sign Up"){}
                .padding()
                .background(Color.sportBackground)
                .foregroundStyle(.white)
                .clipShape(RoundedRectangle(cornerRadius: 15))
            
            Button("EMERGENCY"){
                
            }
        }
    }
}
