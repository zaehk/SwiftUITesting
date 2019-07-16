//
//  PlayerRow.swift
//  SwiftUITest
//
//  Created by Borja Saez de Guinoa Vilaplana on 26/06/2019.
//  Copyright © 2019 Borja Saez de Guinoa Vilaplana. All rights reserved.
//

import SwiftUI

struct PlayerRow : View {
    
    var player: Player
    
    var body: some View {
        HStack {
                Image(player.imageName).resizable()
                .scaledToFit()
                .clipShape(Circle())
                .frame(width: 50.0, height: 50.0)
                .background(Circle())
                .foregroundColor(player.team.color)
            
            Text(player.name).font(.largeTitle)
                .bold()
                .minimumScaleFactor(0.5)
            
            
            Spacer()
            
            
        }
    }
}

#if DEBUG
struct PlayerRow_Previews : PreviewProvider {
    static var previews: some View {
            PlayerRow(player: players[2]).previewLayout(.sizeThatFits)
    }
}
#endif

