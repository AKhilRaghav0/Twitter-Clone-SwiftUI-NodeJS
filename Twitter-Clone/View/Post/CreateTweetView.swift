//
//  CreateTweetView.swift
//  Twitter-Clone
//
//  Created by Akhil on 28/02/24.
//

import SwiftUI

struct CreateTweetView: View {
    @State var text: String = ""
    var body: some View {
        VStack {
            HStack {
                Button(action: {
                    
                }, label: {
                    Text("Cancel")
                })
                
                Spacer()
                
                Button(action: {
                    
                }, label: {
                    Text("Tweet").padding()
                })
                .background(Color.bg2)
                
                .foregroundStyle(.white)
                .clipShape(Capsule())
            }
            
            MultilineTextField(text: $text)
        }
        .padding()
    }
}

#Preview {
    CreateTweetView()
}
