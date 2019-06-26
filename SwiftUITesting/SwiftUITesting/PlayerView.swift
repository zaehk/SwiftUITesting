//
//  PlayerView.swift
//  SwiftUITesting
//
//  Created by Borja Saez de Guinoa Vilaplana on 26/06/2019.
//  Copyright © 2019 Borja Saez de Guinoa Vilaplana. All rights reserved.
//

import SwiftUI

import SwiftUI


struct PlayerView : View {
    
    var player : Player
    
    var body: some View {
        VStack {
            Image(player.team.imageName)
                .resizable()
                .frame(height: 250)
            
            Image(player.imageName).clipShape(Circle())
                .background(Circle().foregroundColor(.white))
                .overlay(Circle().stroke(Color.white,lineWidth: 4))
                .shadow(radius: 15).offset(x: 0, y: -80).padding(.bottom, -70)
            
            
            
            Text(player.name)
                .font(.system(size: 40))
                .bold()
            
            StatText(statName: "Age", statValue: String(player.age))
            StatText(statName: "Height", statValue: String(player.height))
            StatText(statName: "Weight", statValue: String(player.weight))
            
            Spacer()
            }.edgesIgnoringSafeArea(.top)
        
        
        
    }
}

#if DEBUG
struct PlayerView_Previews : PreviewProvider {
    static var previews: some View {
        PlayerView(player: players[1])
    }
}
#endif
