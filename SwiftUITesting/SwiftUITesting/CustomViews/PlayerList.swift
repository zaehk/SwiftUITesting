//
//  PlayerList.swift
//  SwiftUITest
//
//  Created by Borja Saez de Guinoa Vilaplana on 26/06/2019.
//  Copyright © 2019 Borja Saez de Guinoa Vilaplana. All rights reserved.
//

import SwiftUI

struct PlayerList : View {
    var body: some View {
        NavigationView{
            List(players){
                player in
                NavigationLink(destination: PlayerView(player: player)){
                    PlayerRow(player: player)
                }
            }.navigationBarTitle(Text("NBA Finals Players"), displayMode:  .large)
        }
    }
}

#if DEBUG
struct PlayerList_Previews : PreviewProvider {
    static var previews: some View {
        Group {
            PlayerList()
                .previewDevice("iPhone SE")
            PlayerList()
                .previewDevice("iPhone XS Max")
            PlayerList()
                .previewDevice("iPhone XR")
        }
    }
}
#endif
