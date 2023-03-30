//
//  ContentView.swift
//  Appetizers
//
//  Created by Kazi Omar Faruk on 29/3/23.
//

import SwiftUI

struct AppetizerTabView: View {
    var body: some View {
        
        TabView{
            AppetizerListView().tabItem{
                Image(systemName: "house")
                Text("Home")
            }
            AccountView().tabItem{
                Image(systemName: "person.crop.circle")
                Text("Account")
            }
            OrderView().tabItem{
                Image(systemName: "bag")
                Text("Order")
            }
        }
        .accentColor(Color.brandPrimary)
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        AppetizerTabView()
    }
}














