//
//  FBCloneApp.swift
//  FBClone
//
//  Created by Admin on 23/3/23.
//

import SwiftUI

@main
struct FBCloneApp: App {
    var body: some Scene {
        WindowGroup {
            HomeView(searchText: .constant(""))
        }
    }
}
