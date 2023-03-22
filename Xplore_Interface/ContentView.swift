//
//  ContentView.swift
//  Xplore_Interface
//
//  Created by Chikaodili Deng on 22/03/2023.
//

import SwiftUI

struct ContentView: View {
    @State var name: String = ""
    @State var address: String = ""
    @State var email: String = ""
    @State var créerCompte: String = ""
    @State var seConnecter: String = ""
    
    var body: some View {
        VStack {
            Text("Profile")
                .font(.largeTitle)
                .fontWeight(.bold)
            Spacer()
            Image(systemName: "person.circle")
                .resizable()
                .frame(width:100,height: 100)
                .foregroundColor(.orange)
            
            ZStack(alignment: .center) {
                RoundedRectangle(cornerRadius: 20)
                    .frame(width: 350, height:30)
                    .foregroundColor(.mint)
                TextField("Name :", text: $name)
                    .padding(30)
            }
            ZStack {
                RoundedRectangle(cornerRadius: 20)
                    .frame(width: 350, height:30)
                    .foregroundColor(.mint)
                TextField("Address :", text: $address)
                    .padding(.horizontal, 30)
            }
            ZStack {
                RoundedRectangle(cornerRadius: 20)
                    .frame(width: 350, height:30)
                    .foregroundColor(.mint)
                TextField("e-mail :", text: $email)
                    .padding(30)
            }
            HStack {
                ZStack(alignment:.leading) {
                    RoundedRectangle(cornerRadius: 20)
                        .frame(width: 150, height:30)
                        .foregroundColor(.orange)
                        .padding(.leading, 20)
                    TextField("Créer compte :", text: $créerCompte)
                        .padding(30)
                }
                ZStack(alignment: .leading) {
                    RoundedRectangle(cornerRadius: 20)
                        .frame(width: 150, height:30)
                        .foregroundColor(.orange)
                        .padding(.leading, 20)
                    TextField("Se connecter :", text: $seConnecter)
                        .padding(30)
                }
            }
            Spacer()
            
        }
        
    }
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }
}
