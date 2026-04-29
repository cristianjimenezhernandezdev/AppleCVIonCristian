//
//  ContentView.swift
//  Personal CV
//
//  Created by Nikos Galinos on 13/5/23.
//

import SwiftUI

struct ContentView: View {
    @StateObject private var manager : DataManager = DataManager()

    var body: some View {
        TabView{
            Homepage()
                .tabItem{
                    Label("Pàgina d'inici",systemImage: "house")
                        
                }.toolbarBackground(
                    Color.yellow,
                    for: .tabBar)

            DevicesView()
                .environment(\.managedObjectContext, manager.container.viewContext)
                .tabItem{
                    Label("Dispositius",systemImage: "iphone")
                    
                }.toolbarBackground(
                    Color.yellow,
                    for: .tabBar)
            Projects()
                .tabItem{
                    Label("Projectes",systemImage: "book")
                        
                    
                }.toolbarBackground(
                    Color.yellow,
                    for: .tabBar)
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
