//
//  FrameworkGridViewModel.swift
//  Apple-Frameworks
//
//  Created by Kazi Omar Faruk on 27/3/23.
//

import SwiftUI

class FrameworkGridViewModel: ObservableObject {
    var selectedFramework: Framework? {
        didSet{
            isShowingDetailView = true
        }
    }
    
    @Published var isShowingDetailView = false
    
    let columns: [GridItem] = [GridItem(.flexible()),
                               GridItem(.flexible()),
                               GridItem(.flexible())]


}
