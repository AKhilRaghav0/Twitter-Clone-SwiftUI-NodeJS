//
//  MenuItem.swift
//  Twitter-Clone
//
//  Created by Akhil on 03/03/24.
//

import SwiftUI

struct MenuButton: View {
    
    var title: String
    var body: some View {
        HStack(spacing: 15) {
            Image(title)
                .resizable()
                .renderingMode(.template)
                .frame(width: 24, height: 24)
                .foregroundStyle(.gray)
            
            Text(title)
            
            Spacer(minLength: 0)
                
            
            
        }
        .padding(.vertical)
    }
}

//#Preview {
//    MenuButton()
//}
