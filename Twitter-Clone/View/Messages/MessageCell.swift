//
//  MessageCell.swift
//  Twitter-Clone
//
//  Created by Akhil on 02/03/24.
//

import SwiftUI

struct MessageCell: View {
    @State var width = UIScreen.main.bounds.width
    var body: some View {
        VStack(alignment: .leading, spacing: nil) {
            Rectangle()
                .frame(width: width, height: 1)
                .foregroundStyle(.gray)
                .opacity(0.3)
            
            HStack {
                Image("logo")
                    .scaledToFit()
                    .frame(width: 60, height: 60)
                    .cornerRadius(30)
                    .padding(.leading)
                
                
                VStack (alignment: .leading, spacing: 0){
                    HStack {
                        Text("Krypticbit").fontWeight(.bold)
                            .foregroundStyle(.primary)
                        
                        
                        Text(" @krypticbit").fontWeight(.light)
                            .foregroundStyle(.gray)
                        
                        Spacer(minLength: 0)
                        Text("03/03/2024")
                            .foregroundStyle(.gray)
                    }
                    
                    Text("Call me back, when Free!")
                        .foregroundStyle(.gray)
                    
                    Spacer()
                    
                }
            }
            .padding(.top, 2)
        }
        .frame(width: width, height: 84)
        
    }
}

#Preview {
    MessageCell()
}
