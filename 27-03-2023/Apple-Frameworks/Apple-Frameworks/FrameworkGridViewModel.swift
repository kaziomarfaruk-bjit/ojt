//
//  FrameworkGridViewModel.swift
//  Apple-Frameworks
//
//  Created by Kazi Omar Faruk on 27/3/23.
//

import Foundation

class FrameworkGridViewModel: ObservableObject {
    var selectedFramework: Framework? {
        didSet{
            isShowingDetailView = true
        }
    }
    @Published var isShowingDetailView = false
}
