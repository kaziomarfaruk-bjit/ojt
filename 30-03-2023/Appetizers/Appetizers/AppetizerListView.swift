//
//  AppetizerListView.swift
//  Appetizers
//
//  Created by Kazi Omar Faruk on 29/3/23.
//

import SwiftUI

struct AppetizerListView: View {
    @StateObject private var viewModel = AppetizerListViewModel()
    
    var body: some View {
        ZStack{
            NavigationView{
                List(viewModel.appetizers){
                    appetizer in
                    AppetizerListCell(appetizer: appetizer)
                }
                .navigationTitle("🍔 Appetizers")
            }
            if viewModel.isLoading {
                LoadingView()
            }
        }
        .onAppear{
            viewModel.getAppetizers()
        }
        .alert(item: $viewModel.alertItem){
            alert in
            Alert(title: alert.title, message: alert.message, dismissButton: alert.dismissButton)
        }
    }
    
}

struct AppetizerListView_Previews: PreviewProvider {
    static var previews: some View {
        AppetizerListView()
    }
}
