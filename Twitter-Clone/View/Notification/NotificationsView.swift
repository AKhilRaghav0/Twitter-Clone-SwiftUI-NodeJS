//
//  NotificationView.swift
//  Twitter-Clone
//
//  Created by Akhil on 27/02/24.
//

import SwiftUI

struct NotificationsView: View {
    var body: some View {
        VStack {
            ScrollView {
                
                ForEach(0..<9) {_ in
                    NotificationCell()
                    
                }
            }
            
                
                    
                
            }
        }
    }


#Preview {
    NotificationsView()
}
