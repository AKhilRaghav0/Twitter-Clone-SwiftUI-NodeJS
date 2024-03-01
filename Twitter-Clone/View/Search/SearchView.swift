//
//  SearchView.swift
//  Twitter-Clone
//
//  Created by Akhil on 27/02/24.
//

import SwiftUI

struct SearchView: View {
    @State var text: String = ""
    @State var isEditing: Bool = false
    var body: some View {
        VStack {
            SearchBar(text: $text, isEditing: $isEditing)
                .padding(.horizontal)
            
            if !isEditing {
                List(0..<9) { i in
                    SearchCell(tag: "#Maybach", tweets: String(i))
                    
                }
                .listStyle(.plain)
            }
            else {
                List(0..<9) { _ in
                        SearchUserCell()
                }
                .listStyle(.plain)
            }
        }
    }
}

#Preview {
    SearchView()
}
