//
//  Home.swift
//  Twitter-Clone
//
//  Created by Akhil on 27/02/24.
//

import SwiftUI

struct Home: View {
    var body: some View {
        VStack {
            ZStack {
                TabView {
                    Feed()
                        .tabItem {
                            Text("Feeds")
                            Image(systemName: "house")
                        }
                    SearchView()
                        .tabItem {
                            Text("Search")
                            Image(systemName: "magnifyingglass")
                        }
                    GorkView()
                        .tabItem {
                            Text("Gork")
                            Image(systemName: "square.stack.3d.up.slash.fill")
                        }
                    NotificationsView()
                        .tabItem {
                            Text("Notification")
                            Image(systemName: "app.badge.fill")
                        }
                    MessagesView()
                        .tabItem {
                            Text("Messages")
                            Image(systemName: "tray.2")
                        }
                }
            }
        }
    }
}

#Preview {
    Home()
}
