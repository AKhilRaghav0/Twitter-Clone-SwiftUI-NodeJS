//
//  SlideMenu.swift
//  Twitter-Clone
//
//  Created by Akhil on 02/03/24.
//

import SwiftUI

struct SlideMenu: View {
    @State var show = false
    var edges = UIApplication.shared.windows.first?.safeAreaInsets
    var menuButtons = ["Profile", "Premium", "Communities", "Bookmarks", "Lists", "Spaces", "Monetisation"]
    var body: some View {
        VStack {
            HStack {
                VStack(alignment: .leading, spacing: 0){
                  
                        Image("logo")
                            .resizable()
                            .frame(width: 60, height: 60)
                            .clipShape(Circle())
                      
                            
                        
                    
                    
                    
                    
                    HStack(alignment: .top, spacing: 12) {
                        VStack(alignment: .leading, spacing: 12) {
                            Text("Krypticbit")
                                .font(.title3)
                                .bold()
//                                .foregroundStyle(.black)
                            
                            Text("@rghv064")
                                .foregroundStyle(.gray)
                            
                            HStack(spacing: 20) {
                                FollowView(count: 89, title: "Followers")
                                FollowView(count: 34, title: "Following")
                                
                            }
                            .padding(.top, 10)
                            Divider()
                                .padding(.top, 10)
                            
                            
                        }
                        
                        Spacer(minLength: 0)
                        HStack {
                            Button(action: {
                                withAnimation(.bouncy) {
                                    self.show.toggle()
                                }
                            }, label: {
                                Image(systemName: show ?  "chevron.down" : "chevron.up")
                                    .foregroundStyle(.bg2)
                            })
                        }
                        
                        
                        
                    }
                    VStack(alignment: .leading, content: {
                        ForEach(menuButtons, id:\.self) { item in
                            MenuButton(title: item)
                            
                        }
                    })
                    
                    Divider()
//                        .padding(.top, 10)
                    
                    Button(action: {
                        
                    }, label: {
                        HStack {
                            Image(systemName: "gearshape")
                            Text("Setting and Privacy")
                                

                        }
                        .padding(.top, 20)
                        .foregroundStyle(.black)
                        
                    })
                    
                    
                 
                    
                    Button(action: {
                        
                    }, label: {
                        HStack {
                            Image(systemName: "questionmark.circle")
                            Text("Help Center")
                                

                        }
                        .padding(.top, 20)
                        .foregroundStyle(.black)
                        
                    })
                  

                    
                    Divider().padding(.bottom)
                    
                    
                    HStack {
                        Button(action: {
                            
                        }, label: {
                            Image(systemName: "sun.min")
                                .renderingMode(.original)
                                .resizable()
                                .frame(width: 26, height: 26)
                                .foregroundColor(Color.bg)
                            
                                
                        })
                        
                        Spacer(minLength: 0)
                        
                        Image(systemName: "qrcode")
                            .renderingMode(.original)
                            .resizable()
                            .frame(width: 26, height: 26)
                            .foregroundColor(Color.bg)
                    }
                    .opacity(show ? 1 : 0)
                    .frame(height: show ? nil : 0)
                    
                    VStack(alignment: .leading) {
                        Button(action: {
                            
                        }, label: {
                            Text("Create a New Account")
                                .foregroundStyle(Color.bg2)
                            
                        })
                        
                        Button(action: {
                            
                        }, label: {
                            Text("Add an Exisiting Account")
                                .foregroundStyle(Color.bg2)
                            
                        })
                        .padding(.top)
                        
                        Spacer(minLength: 0)
                        
                        
                    }
                    .opacity(!show ? 1 : 0)
                    .frame(height: !show ? nil : 0)
                }
                .padding(.horizontal, 20)
                .padding(.top, edges!.top == 0 ? 15 : edges!.top)
                .padding(.bottom, edges!.bottom == 0 ? 15 : edges!.bottom)
                .frame(width: UIScreen.main.bounds.width - 90)
                .background(Color.white)
                .ignoresSafeArea(.all, edges: .vertical)
                
                Spacer()
                
                
                
               
                
                
              
            }
            
            
        }
        
    }
}

#Preview {
    SlideMenu()
}
