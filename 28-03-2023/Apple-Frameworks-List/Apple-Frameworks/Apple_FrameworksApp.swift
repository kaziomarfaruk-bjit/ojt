//
//  Apple_FrameworksApp.swift
//  Apple-Frameworks
//
//  Created by Admin on 27/3/23.
//

import SwiftUI

@main
struct Apple_FrameworksApp: App {
    var body: some Scene {
        WindowGroup {
            // FrameworkDetailView(framework: MockData.sampleFramework)
            FrameworkGridView()
        }
    }
}
