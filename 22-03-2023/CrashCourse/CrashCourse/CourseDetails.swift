//
//  CourseDetails.swift
//  CrashCourse
//
//  Created by Admin on 22/3/23.
//

import SwiftUI

struct CourseDetails: View {
    
    var courseDetails: CourseModel
    
    var body: some View {
        VStack(alignment: .center, spacing: 30, content: {
            Image(courseDetails.imagePath).resizable()
                .scaledToFit()
                .frame(height: 200, alignment: .center)
                .cornerRadius(20)
            
            VStack(alignment: .center){
                Text(courseDetails.title)
                    .fontWeight(.bold)
                    .font(.headline)
                
                Text("Price: "+courseDetails.price+"\u{0024}")
                    .fontWeight(.bold)
                    .font(.headline)

                Text(courseDetails.description)
                    .fontWeight(.light)
                    .font(.subheadline)
                    .padding(8)
                
            }
        
            Spacer()
            Link(destination: URL(string: "google.com")!){
                Text("Click here to enrol")
                    .fontWeight(.bold)
                    .font(.headline)
            }
            Spacer()
            
            
        })
        
    }
    
}

struct CourseDetails_Previews: PreviewProvider {
    static var previews: some View {
        CourseDetails(courseDetails: CourseModelList.courses[1])
    }
}
