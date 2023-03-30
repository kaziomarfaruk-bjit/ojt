//
//  Altert.swift
//  Appetizers
//
//  Created by Kazi Omar Faruk on 30/3/23.
//

import SwiftUI

struct AlertItem: Identifiable {
    let id = UUID()
    let title: Text
    let message: Text
    let dismissButton: Alert.Button
}


struct AlertContext {
    static let invalidURL = AlertItem(title: Text("Invalid URL"),
                                      message: Text("Something is wrong with the url."),
                                      dismissButton: .default(Text("OK")))
    
    static let invalidResponse = AlertItem(title: Text("Invalid Response"),
                                           message: Text("Something is wrong with the server response."),
                                           dismissButton: .default(Text("OK")))

    static let invalidData = AlertItem(title: Text("Invalid Data"),
                                       message: Text("Something is wrong with the data."),
                                       dismissButton: .default(Text("OK")))

    static let unableToComplete = AlertItem(title: Text("Invalid Server Error"),
                                            message: Text("Something is wrong with the server."),
                                            dismissButton: .default(Text("OK")))

}





