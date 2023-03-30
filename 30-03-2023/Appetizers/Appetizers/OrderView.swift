//
//  OrderView.swift
//  Appetizers
//
//  Created by Kazi Omar Faruk on 29/3/23.
//

import SwiftUI

struct OrderView: View {
    var body: some View {
        NavigationView{
            Text("Orders")
            .navigationTitle("🎁 Orders")
        }

    }
}

struct OrderView_Previews: PreviewProvider {
    static var previews: some View {
        OrderView()
    }
}
