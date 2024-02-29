//
//  Feed.swift
//  Twitter-Clone
//
//  Created by Akhil on 27/02/24.
//

import SwiftUI

struct Feed: View {
    var body: some View {
        ScrollView(.vertical, showsIndicators: false){
            
            
            
            
            VStack(spacing: 18) {
                
                TweetCellView(tweet: "Stable Diffused Image by Greg Art.", tweetImage: "post")
                Divider()
                
                
                ForEach(1...20, id: \.self) { _ in
                    
                    TweetCellView(tweet: sampleText)
                    
                }
            }
            .padding(.top)
            .padding(.horizontal)
            .zIndex(0)
        }
        

    }
}

#Preview {
    Feed()
}
