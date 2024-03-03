//
//  followView.swift
//  Twitter-Clone
//
//  Created by Akhil on 03/03/24.
//

import SwiftUI

struct FollowView: View {
    
    var count: Int
    var title: String
    var body: some View {
        HStack {
            Text("\(count)")
                .bold()
//                .foregroundStyle(.gray)
            
            Text(title)
                .foregroundStyle(.gray)
        }
    }
}

//#Preview {
//    FollowView()
//}
