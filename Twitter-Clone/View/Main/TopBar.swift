//
//  TopBar.swift
//  Twitter-Clone
//
//  Created by Akhil on 02/03/24.
//

import SwiftUI

struct TopBar: View {
    @State var width = UIScreen.main.bounds.width
    var body: some View {
        VStack {
            HStack {
                Button(action: {
                    
                }, label: {
                    Image(systemName: "line.horizontal.3")
                        .font(.system(size: 24))
                        .foregroundColor(Color.bg2)
                })
                Spacer(minLength: 0)
                
                Image(systemName: "bird")
                    .font(.system(size: 24))
                    .foregroundStyle(Color.bg2)
                    .padding(.trailing)
                    .frame(width: 20, height: 20)
                
                Spacer(minLength: 0)
            }
            .padding()
            
            Rectangle()
                .frame(width: width, height: 1)
                .foregroundStyle(.gray)
                .opacity(0.3)
        }
        .background(Material.thinMaterial)
    }
}

#Preview {
    TopBar()
}
