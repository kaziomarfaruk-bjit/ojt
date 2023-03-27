//
//  FrameworkDetailView.swift
//  Apple-Frameworks
//
//  Created by Kazi Omar Faruk on 27/3/23.
//

import SwiftUI

struct FrameworkDetailView: View {
    var framework: Framework
    @Binding var isShowingDetailView: Bool
    var body: some View {
        VStack{
            HStack{
                Spacer()
                Button{
                    isShowingDetailView = false
                } label: {
                    Image(systemName: "xmark").foregroundColor(Color(.label)).imageScale(.large).frame(width: 44, height: 44)
                }
            }.padding()
            
            Spacer()
            FrameworkTitleView(framework: framework)
            Text(framework.description).font(.body).padding()
            
            Spacer()
            
            Button{
            } label: {
                AFButton(title: "Learn More!")
            }
            
            Spacer()
            
            
        }
    }
}

struct FrameworkDetailView_Previews: PreviewProvider {
    static var previews: some View {
        FrameworkDetailView(framework: MockData.sampleFramework, isShowingDetailView: .constant(false))
            .preferredColorScheme(.dark)
    }
}
