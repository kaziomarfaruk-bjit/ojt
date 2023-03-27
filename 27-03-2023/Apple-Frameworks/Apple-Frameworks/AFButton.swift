//
//  AFButton.swift
//  Apple-Frameworks
//
//  Created by Kazi Omar Faruk on 27/3/23.
//

import SwiftUI

struct AFButton: View {
    var title: String
    var body: some View {
        Text(title)
            .font(.body)
            .fontWeight(.semibold)
            .frame(width: 240, height: 40)
            .background(Color.green)
            .foregroundColor(Color.white)
            .cornerRadius(10)

    }
}

struct AFButton_Previews: PreviewProvider {
    static var previews: some View {
        AFButton(title: "Test")
    }
}
