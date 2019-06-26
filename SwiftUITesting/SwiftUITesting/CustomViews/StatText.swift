//
//  StatText.swift
//  SwiftUITest
//
//  Created by Borja Saez de Guinoa Vilaplana on 26/06/2019.
//  Copyright © 2019 Borja Saez de Guinoa Vilaplana. All rights reserved.
//

import SwiftUI

struct StatText : View {
    
    var statName: String
    var statValue: String
    
    
    
    var body: some View {
        HStack(alignment: .center){
            Text(statName + ":").font(.system(size: 45)).fontWeight(.bold).padding(.leading, 30)
            Text(statValue).font(.system(size: 40)).fontWeight(.medium).padding(.leading, 30)
            Spacer()
        }
    }
}

#if DEBUG
struct StatText_Previews : PreviewProvider {
    static var previews: some View {
        StatText(statName: "Age", statValue: "31")
    }
}
#endif
