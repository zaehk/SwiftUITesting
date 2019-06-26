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
                .background(Circle())
                .foregroundColor(player.team.color)
            
            Text(player.name).font(.largeTitle)
            
            Spacer()
            
            
        }
    }
}

#if DEBUG
struct PlayerRow_Previews : PreviewProvider {
    static var previews: some View {
        VStack {
            PlayerRow(player: players[0]).previewLayout(.fixed(width: 500, height: 100))
            PlayerRow(player: players[1]).previewLayout(.fixed(width: 500, height: 100))
            PlayerRow(player: players[2]).previewLayout(.fixed(width: 500, height: 100))
            PlayerRow(player: players[3]).previewLayout(.fixed(width: 500, height: 100))
            PlayerRow(player: players[4]).previewLayout(.fixed(width: 500, height: 100))
            PlayerRow(player: players[5]).previewLayout(.fixed(width: 500, height: 100))
            PlayerRow(player: players[6]).previewLayout(.fixed(width: 500, height: 100))
            PlayerRow(player: players[7]).previewLayout(.fixed(width: 500, height: 100))
            PlayerRow(player: players[8]).previewLayout(.fixed(width: 500, height: 100))
            
        }
    }
}
#endif

