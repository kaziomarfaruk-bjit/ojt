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
            List{
                ForEach(MockData.frameworks, id: \.self){ data in
                    NavigationLink(destination: FrameworkDetailView(framework: data, isShowingDetailView: $viewModel.isShowingDetailView)) {
                        FrameworkTitleView(framework: data)
                    }
                }
            }
            .navigationTitle("Apple Frameworks!")
        }
        .accentColor(Color(.label))
    }
}

struct FrameworkGridView_Previews: PreviewProvider {
    static var previews: some View {
        FrameworkGridView()
    }
}


