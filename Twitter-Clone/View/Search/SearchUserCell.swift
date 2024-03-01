//
//  SearchUserCell.swift
//  Twitter-Clone
//
//  Created by Akhil on 01/03/24.
//

import SwiftUI

struct SearchUserCell: View {
    var body: some View {
        HStack {
            Image("logo")
                .resizable()
                .scaledToFit()
                .frame(width: 44, height: 44)
                .clipShape(Circle())
            
            VStack(alignment: .leading) {
                Text("KrypticBit").fontWeight(.heavy)
                Text("@rghv064").fontWeight(.light)
            }
            Spacer(minLength: 0)
            
        }
    }
}

#Preview {
    SearchUserCell()
}
