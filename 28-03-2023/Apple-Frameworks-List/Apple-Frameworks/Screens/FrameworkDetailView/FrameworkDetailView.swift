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
    @State var isShowingSafariView = false
    
    var body: some View {
        VStack{
            FrameworkTitleView(framework: framework)
            Text(framework.description).font(.body).padding()
            Spacer()
            Button{
                isShowingSafariView = true
            } label: {
                AFButton(title: "Learn More!")
            }
            Spacer()
        }
        .fullScreenCover(isPresented: $isShowingSafariView){
            SafariView(url: (URL(string: framework.urlString) ?? URL(string: "apple.com")!))
        }
        
        
    }
}

struct FrameworkDetailView_Previews: PreviewProvider {
    static var previews: some View {
        FrameworkDetailView(framework: MockData.sampleFramework, isShowingDetailView: .constant(false))
            .preferredColorScheme(.dark)
    }
}
