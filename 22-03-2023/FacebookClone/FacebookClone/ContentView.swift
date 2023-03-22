//
//  ContentView.swift
//  FacebookClone
//
//  Created by Admin on 22/3/23.
//

import SwiftUI


struct ContentView: View {
    
    @Binding var searchText: String
    let facebookBlue = UIColor(red: 23/255.0,
                               green: 120/255.0,
                               blue: 242/255.0,
                               alpha: 1)
    let stories = ["mt-1", "mt-2", "mt-3", "mt-4", "mt-5"]
    
    var body: some View {
        
        VStack{
            HStack{
                Text("Facebook!")
                    .foregroundColor(Color(facebookBlue))
                    .font(.system(size: 48, weight: .bold, design: .default))
                    .padding()
                Spacer()
                Image(systemName: "person.circle")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 40, height: 40, alignment: .center)
                    .padding()
                    .foregroundColor(Color(.secondaryLabel))
            }
            
            TextField("Search...", text: $searchText)
                .padding()
                .background(Color(.systemGray5))
                .cornerRadius(10)
                .padding(.horizontal, 15)
            
            ZStack{
                Color(.secondarySystemBackground)
                
                ScrollView(.vertical){
                    VStack{
                        ScrollView(.horizontal, showsIndicators: false){
                            HStack(spacing: 4){
                                ForEach(stories, id: \.self){ name in
                                    Image("\(name)")
                                        .resizable()
                                        .aspectRatio(contentMode: .fill)
                                        .frame(width: 140, height: 200, alignment: .center)
                                        .clipped()
                                }
                            }.padding(EdgeInsets(top: 10.0, leading: 10.0, bottom: 10.0, trailing: 10.0))
                            
                            
                        }
                        
                    }
                }
                
            }
            
            Spacer()
            
        }
        
        
        
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(searchText: .constant(""))
    }
}
