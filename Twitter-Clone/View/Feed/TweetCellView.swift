//
//  TweetCellView.swift
//  Twitter-Clone
//
//  Created by Akhil on 28/02/24.
//

import SwiftUI

struct TweetCellView: View {
    @State var tweet: String
    @State var tweetImage: String?
    
    var body: some View {
        VStack {
            HStack(alignment: .top, spacing:20) {
                Image("logo")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 55, height: 55)
                    .clipShape(Circle())
                
                
                VStack(alignment: .leading, spacing: 10) {
                    Text("KrypticBit ")
                        .font(.headline)
                        .foregroundColor(.primary)
                    +
                    Text("@KrypticBit")
                        .font(.caption)
                        .foregroundStyle(.gray)
                    
                    Text(tweet)
                        .frame(maxHeight: 100, alignment: .top)
                    
                    if let image = tweetImage {
                        GeometryReader { proxy in
                            Image(image)
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                                .frame(width: proxy.frame(in: .global).width,
                                       height: 250)
                                .cornerRadius(15)
                            
                        }
                        .frame(height: 250)
                    }
                        
                }
               
            }
            
            //Cell Bottom
            HStack (spacing: 50){
                Button(action: {
                    
                }, label: {
                    Image(systemName: "bubble")
                    
                        .resizable()
                        .renderingMode(.template)
                        .foregroundStyle(Color.gray)
                        .frame(width: 20, height: 20)
                })
                
                Button(action: {
                    
                }, label: {
                    Image(systemName: "repeat")
                        .resizable()
                        .renderingMode(.template)
                        .foregroundStyle(Color.gray)
//                        .background(Color.gray)
                        
                        .frame(width: 20, height: 20)
                })
             
                Button(action: {
                    
                }, label: {
                    Image(systemName: "heart")
                        .resizable()
                        .renderingMode(.template)
                        .foregroundStyle(Color.gray)
//                        .background(Color.gray)
                        
                        .frame(width: 20, height: 20)
                })
                Button(action: {
                    
                }, label: {
                    Image(systemName: "square.and.arrow.up")
                        .resizable()
                        .renderingMode(.template)
                        .foregroundStyle(Color.gray)
//                        .background(Color.gray)
                        
                        .frame(width: 20, height: 20)
                })
                .padding(.trailing, 10)
                
                
                
                HStack {
                    Button(action: {
                        
                    }, label: {
                        Image(systemName: "bookmark")
                            .resizable()
                            .renderingMode(.template)
                            .foregroundStyle(Color.gray)
    //                        .background(Color.gray)
                            
                            .frame(width: 20, height: 20)
                    })
                    Button(action: {
                        
                    }, label: {
                        Image(systemName: "arrow.up.right.and.arrow.down.left.rectangle.fill")
                            .resizable()
                            .renderingMode(.template)
                            .foregroundStyle(Color.gray)
    //                        .background(Color.gray)
                            
                            .frame(width: 20, height: 20)
                    })
                }
            }
            .padding(.top, 4)
            
            
            
        }
    }
}

#Preview {
    TweetCellView(tweet: sampleText)
}


var sampleText = "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum"
