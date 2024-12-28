//
//  ContentView.swift
//  BottomNavBar
//
//  Created by Noah budarf on 2024-12-28.
//

import SwiftUI

struct ContentView: View {
    
    @State private var selectedTab = 0
    
    var body: some View {
        TabView(selection: $selectedTab) {
            VStack {
                Text("Home View")
                    .font(.largeTitle)
                    .foregroundColor(.white)
                    .background(Color.blue)
            }
            .tag(0)
            
            VStack {
                Text("Search View")
                    .font(.largeTitle)
                    .foregroundColor(.white)
                    .background(Color.gray)
            }
            .tag(1)
            
            
            VStack {
                Text("Profile View")
                    .font(.largeTitle)
                    .foregroundColor(.white)
                    .background(Color.green)
            }
            .tag(2)
            
            VStack {
                Text("Door View")
                    .font(.largeTitle)
                    .foregroundColor(.white)
                    .background(Color.yellow)
            }
            .tag(3)
        }.tabViewStyle(PageTabViewStyle(indexDisplayMode: .never))
        
        Capsule()
            .fill(Color.black)
            .opacity(0.7)
            .overlay(
                HStack {
                    Button(action: {
                        selectedTab = 0
                    }) {
                        VStack {
                            Image(systemName: "house.fill")
                                .foregroundStyle(.white)
                            if selectedTab == 0 {
                                Text("Home")
                                    .foregroundColor(.white)
                            }
                        }
                    }
                    .frame(maxWidth: .infinity)
                    
                    Button(action: {
                        selectedTab = 1
                    }) {
                        VStack {
                            Image(systemName: "magnifyingglass")
                                .foregroundStyle(.white)
                            if selectedTab == 1 {
                                Text("Search")
                                    .foregroundColor(.white)
                            }
                        }
                    }
                    .frame(maxWidth: .infinity)
                    
                    Button(action: {
                        selectedTab = 2
                    }) {
                        VStack {
                            Image(systemName: "person.fill")
                                .foregroundStyle(.white)
                            if selectedTab == 2 {
                                Text("Profile")
                                    .foregroundColor(.white)
                            }
                        }
                    }
                    .frame(maxWidth: .infinity)
                    
                    Button(action: {
                        selectedTab = 3
                    }) {
                        VStack {
                            Image(systemName: "door.french.closed")
                                .foregroundStyle(.white)
                            if selectedTab == 3 {
                                Text("Doors")
                                    .foregroundColor(.white)
                            }
                        }
                    }
                    .frame(maxWidth: .infinity)
                }
//                .padding()
            ).frame(height: 75)
            .padding(5)
        
        
    }
}

#Preview {
    ContentView()
}
