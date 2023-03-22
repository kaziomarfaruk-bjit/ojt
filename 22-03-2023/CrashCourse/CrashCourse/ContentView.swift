//
//  ContentView.swift
//  CrashCourse
//
//  Created by Admin on 22/3/23.
// U+0024

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        let courses: [CourseModel] = CourseModelList.courses
        NavigationView{
            List(courses, id: \.id){ item in
                NavigationLink(destination: CourseDetails(courseDetails: item), label: {
                    HStack{
                        Image(item.imagePath)
                            .resizable()
                            .scaledToFit()
                            .frame(height: 100)
                            .padding(.horizontal, 8)
                        VStack(alignment: .leading, spacing: 15){
                            Text(item.title)
                                .font(.headline)
                                .fontWeight(.medium)
                            Text("Price \(item.price)\u{0024}")
                                .font(.subheadline)
                                .fontWeight(.light)
                        }
                    }
                })
            }.navigationTitle("Home")
            
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
