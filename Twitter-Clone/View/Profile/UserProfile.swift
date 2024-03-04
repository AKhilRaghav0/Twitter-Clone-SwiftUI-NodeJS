//
//  UserProfile.swift
//  Twitter-Clone
//
//  Created by Akhil on 04/03/24.
//

import SwiftUI

struct UserProfile: View {
    @State var offset: CGFloat = 0
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            VStack(spacing: 15) {
                GeometryReader { proxy -> AnyView in
                    let minY = proxy.frame(in: .global).minY
                    
                    DispatchQueue.main.async {
                        self.offset = minY  
                    }
                    return AnyView(
                        ZStack {
                            Image("banner")
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                                .frame(width: UIScreen.main.bounds.width, height: minY > 0 ? 0 : 180 + minY, alignment: .center)
                                .cornerRadius(0)
                            
                            BlurView()
                                .opacity(blueViewOpacity())
                            
                            VStack(spacing: 5) {
                                Text("KrypticBit")
                                    .fontWeight(.heavy)
                                    .foregroundStyle(Color.bg3)
                                
                                Text("168 Tweets")
                                    .foregroundStyle(Color.bg3)
                                    
                                
                            }
                            .offset(y: 120)
                            
                        }
                      
                            
                        
                    )
                    
                }
                
            }
        }
    }
    func blueViewOpacity() -> Double {
        let progress = -(offset + 80) / 150
        return Double(-offset > 80 ? progress : 0)
    }
}

#Preview {
    UserProfile()
}
