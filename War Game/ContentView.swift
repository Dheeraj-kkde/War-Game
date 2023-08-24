//
//  ContentView.swift
//  War Game
//
//  Created by Dheeraj Kumar on 24/08/23.
//

import SwiftUI

struct ContentView: View {
    
    @State var playerCard = "card2"
    @State var cpuCard = "card3"
    
    
    @State var playerCardScore = 0
    @State var cpuCardScore = 0
    
    var body: some View {
        ZStack{
            
            Image("background-cloth")
                .resizable()
                .ignoresSafeArea()
            
            VStack{
                Spacer()
                Image("logo")
                Spacer()
                HStack{
                    Spacer()
                    Image(playerCard)
                    Spacer()
                    Image(cpuCard)
                    Spacer()
                }
                Spacer()
                
                Button {
                    deal()
                } label: {
                    Image("button")
                }
                
                Spacer()
                
                HStack{
                    Spacer()
                    VStack{
                        Text("Player")
                            .font(.headline)
                            .padding(.bottom, 10.0)
                        Text(String(playerCardScore))
                            .font(.largeTitle)
                    }
                    
                    Spacer()
                    
                    VStack{
                        Text("CPU")
                            .font(.headline)
                            .padding(.bottom,10.0)
                        Text(String(cpuCardScore))
                            .font(.largeTitle)
                    }
                    Spacer()
                }
                .foregroundColor(.white)
                Spacer()
            }
        }
    }
    func deal(){
        //randomize the player card
        
        var playerCardValue = Int.random(in: 2...14)
        playerCard = "card" + String(playerCardValue)
        
        //randomize the cpu card
        
        var cpuCardValue = Int.random(in: 2...14)
        cpuCard = "card" + String(cpuCardValue)
        
        //update score
        
        if playerCardValue > cpuCardValue {
            playerCardScore += 1
        } else if cpuCardValue > playerCardValue{
            cpuCardScore += 1
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
