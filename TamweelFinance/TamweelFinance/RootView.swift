//
//  RootView.swift
//  TamweelFinance
//
//  Created by Hamza Alkadir on 11/6/23.
//

import Foundation
import SwiftUI

struct RootView: View {
    
    enum Tabs: Int{
        case Calculator = 0
        case Home = 1
        case Settings = 2
    }
    
    @State private var selectedTab: Tabs = .Home
    
    var body: some View {
        
        TabView(selection: $selectedTab) {
            
            
            CalculatorView()
                .tabItem {
                    if selectedTab == .Home {
                        Image(systemName: "dollarsign.circle")
                    }
                    else {
                        Image(systemName: "dollarsign.circle")
                            .environment(\.symbolVariants, .none)
                    }
                    Text("Calculator")
                }
                .tag(Tabs.Home)
            HomeView()
                .tabItem {
                    if selectedTab == .Home {
                        Image(systemName: "house")
                    }
                    else {
                        Image(systemName: "house")
                            .environment(\.symbolVariants, .none)
                    }
                    Text("Home")
                }
                .tag(Tabs.Home)
            SettingsView()
                .tabItem {
                    if selectedTab == .Home {
                        Image(systemName: "gear")
                    }
                    else {
                        Image(systemName: "gear")
                            .environment(\.symbolVariants, .none)
                    }
                    Text("Settings")
                }
                .tag(Tabs.Home)
        }
        .tabViewStyle(DefaultTabViewStyle())
        
        
        .onAppear(){
            
            UITabBar.appearance().isTranslucent = true
        }
        .tint(.green)
        
        
        
        
        
        
    }
    
    
    
}

struct RootView_Previews: PreviewProvider {
    static var previews : some View {
        RootView()
    }
}

