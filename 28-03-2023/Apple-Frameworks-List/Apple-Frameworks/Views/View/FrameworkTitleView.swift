//
//  FrameworkTitleView.swift
//  Apple-Frameworks
//
//  Created by Kazi Omar Faruk on 28/3/23.
//

import SwiftUI


struct FrameworkTitleView: View {
    var framework: Framework
    var body: some View{
        HStack{
            Image("\(framework.imageName)").resizable().frame(width: 70, height: 70)
            Text("\(framework.name)")
                .font(.title2)
                .fontWeight(.bold)
                .scaledToFit()
                .minimumScaleFactor(0.6)
                .padding()
        }

    }
}


struct FrameworkTitleView_Previews: PreviewProvider {
    static var previews: some View {
        FrameworkTitleView(framework: MockData.sampleFramework)
    }
}
