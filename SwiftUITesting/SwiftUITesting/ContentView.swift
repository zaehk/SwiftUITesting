//
//  PlayerView.swift
//  SwiftUITesting
//
//  Created by Borja Saez de Guinoa Vilaplana on 21/06/2019.
//  Copyright © 2019 Borja Saez de Guinoa Vilaplana. All rights reserved.
//

import SwiftUI


struct PlayerView : View {
    
    var player : Player 
    
    var body: some View {
        VStack {
            Image("gs")
                .resizable()
                .frame(height: 250)
            
            Image("steph").clipShape(Circle())
                .background(Circle().foregroundColor(.white))
                .overlay(Circle().stroke(Color.white, lineWidth: 4))
                .shadow(radius: 15).offset(x: 0, y: -80).padding(.bottom, -70)
            
            
            
            Text("Steph Curry")
                .font(.system(size: 40))
                .bold()
            
            StatText(statName: "Age", statValue: "31")
            StatText(statName: "Height", statValue: "6' 3\"")
            StatText(statName: "Weight", statValue: "190lbs")
            
            Spacer()
            }.edgesIgnoringSafeArea(.top)
        
        
        
    }
}

#if DEBUG
struct PlayerView_Previews : PreviewProvider {
    static var previews: some View {
        PlayerView()
    }
}
#endif
