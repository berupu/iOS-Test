//
//  MainController.swift
//  Shared
//
//  Created by Ashraful Islam Rupu on 6/1/22.
//

import SwiftUI

struct MainController: View {

    var body: some View {
        
            TabView {
                HomeView()
                    .tabItem {
                        Label("Home", systemImage: "house.fill")
                        Text("dnjnsjnd")
                    }
                
                CategoryView()
                    .tabItem {
                        Label("Category", systemImage: "square.fill.on.square.fill")
                    }
                SettingsView()
                    .tabItem {
                        Label("Settings", systemImage: "gear")
                    }
                
            }
            .accentColor(.white)
            .onAppear() {
                UITabBar.appearance().backgroundColor = .black
            }
        
        
        
    }

}

struct MainController_Previews: PreviewProvider {
    static var previews: some View {
        MainController()
            
    }
}

enum Tab: String, CaseIterable {
    case Home = "home"
    case Category = "category"
}
