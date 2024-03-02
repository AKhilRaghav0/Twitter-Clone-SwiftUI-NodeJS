//
//  MessagesView.swift
//  Twitter-Clone
//
//  Created by Akhil on 27/02/24.
//

import SwiftUI

struct MessagesView: View {
    var body: some View {
        VStack {
            ScrollView{
                ForEach(0..<15) {_ in
                    MessageCell()
                }
            }
        }
    }
}

#Preview {
    MessagesView()
}
