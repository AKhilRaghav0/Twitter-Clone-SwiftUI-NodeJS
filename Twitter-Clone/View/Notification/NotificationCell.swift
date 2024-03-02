//
//  NotificationCell.swift
//  Twitter-Clone
//
//  Created by Akhil on 01/03/24.
//

import SwiftUI

struct NotificationCell: View {
    @State var width = UIScreen.main.bounds.width
    
    var body: some View {
        VStack {
            Rectangle()
                .frame(width: width, height: 1, alignment: .center)
                .foregroundColor(.gray)
                .opacity(0.3)

            HStack (alignment: .top) {
                Image(systemName: "person.fill")
                    .resizable()
                    .foregroundColor(.bg2)

                    .scaledToFit()
                    .frame(width: 20, height: 20)
                
                
                VStack(alignment: .leading, spacing: 5) {
                    
                    Image("logo")
                        .resizable()
                        .frame(width: 36, height: 36)
                        .cornerRadius(18)
    //                    .clipShape(Circle())
                    
                    Text("Krypticbit").fontWeight(.heavy)
                        .foregroundStyle(.primary)
                    +
                    Text(" Followed you").fontWeight(.light)
                    
                }
                Spacer(minLength: 0)
            }
            .padding(.leading, 30)
            
            
            
           
        }
        
    }
}

#Preview {
    NotificationCell()
}
