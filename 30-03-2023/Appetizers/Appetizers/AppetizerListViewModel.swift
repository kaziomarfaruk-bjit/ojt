//
//  AppetizerListViewModel.swift
//  Appetizers
//
//  Created by Kazi Omar Faruk on 30/3/23.
//

import SwiftUI

final class AppetizerListViewModel: ObservableObject {
    
    @Published var appetizers: [Appetizer] = []
    @Published var alertItem: AlertItem?
    
    @Published var isLoading = false
    
    func getAppetizers(){
        isLoading = true
        NetworkManager.shared.getAppetizers{ [self]
            result in
            DispatchQueue.main.async {
                isLoading = false
                switch result {
                    case .success(let appetizers):
                        print(appetizers)
                        self.appetizers = appetizers
                    case .failure(let error):
                        switch error{
                        case .invalidData:
                            alertItem = AlertContext.invalidData
                        case .invalidURL:
                            alertItem = AlertContext.invalidURL
                        case .invalidResponse:
                            alertItem = AlertContext.invalidResponse
                        case .unableToComplete:
                            alertItem = AlertContext.unableToComplete
                        }
                }
            }
        }
    }
    
}

