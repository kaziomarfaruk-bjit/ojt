//
//  FrameworkGridView.swift
//  Apple-Frameworks
//
//  Created by Admin on 27/3/23.
//

import SwiftUI

struct FrameworkGridView: View {
    
    @StateObject var viewModel = FrameworkGridViewModel()
    
    var body: some View {
        
        NavigationView{
            ScrollView{
                LazyVGrid(columns: viewModel.columns){
                    ForEach(MockData.frameworks, id: \.self){ data in
                        FrameworkTitleView(framework: data).onTapGesture {
                            viewModel.selectedFramework = data
                        }
                    }
                }
            } 
            .navigationTitle("Apple Frameworks!")
            .sheet(isPresented: $viewModel.isShowingDetailView){
                if let selectedFramework = viewModel.selectedFramework {
                    FrameworkDetailView(framework: selectedFramework,
                                        isShowingDetailView: $viewModel.isShowingDetailView)
                }
            }
        }
        
    }
}

struct FrameworkGridView_Previews: PreviewProvider {
    static var previews: some View {
        FrameworkGridView()
    }
}


