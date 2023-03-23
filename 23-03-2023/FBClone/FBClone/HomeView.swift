//
//  HomeView.swift
//  FBClone
//
//  Created by Admin on 23/3/23.
//

import SwiftUI

struct HomeView: View {
    @Binding var searchText: String
    var images = ["mt-1", "mt-2", "mt-3", "mt-4", "mt-5", "mt-6", "mt-7", "mt-8" , "mt-9", "mt-10"]
    var body: some View {
        VStack{
            HStack{
                Text("Facebook")
                    .foregroundColor(.blue)
                    .font(.system(size: 40, weight: .semibold, design: .default))
                Spacer()
                Image(systemName: "person.circle")
                    .resizable()
                    .frame(width: 30, height: 30, alignment: .center)
            }.padding()
            TextField("Search...", text: $searchText)
                .padding()
                .frame(height: 38)
                .background(Color(.systemGray5))
                .padding(.horizontal, 10)
                .cornerRadius(18)
            
            ZStack{
                Color(.secondarySystemBackground)
                ScrollView(.vertical, showsIndicators: false) {
                    ScrollView(.horizontal, showsIndicators: false){
                        HStack{
                            ForEach(images, id: \.self){ img in
                                Image(img).resizable()
                                    .aspectRatio(contentMode: .fill)
                                    .frame(width: 140, height: 200, alignment: .center)
                                    .cornerRadius(20)
                                    .clipped(antialiased: false)
                            }
                        }.padding()
                    }
                    FBPost()
                }
                
            }
            Spacer()
        }
    }
}

struct FBPost: View{
    // @State var isLiked: Bool = false
    var body: some View{
        var isLiked: Bool = false
        ForEach(PostModel.posts, id: \.id){ post in
            
            ZStack{
                Color(.tertiarySystemBackground)
                HStack{
                    Image(post.img).resizable()
                        .frame(width: 60, height: 60, alignment: .center)
                        .cornerRadius(60)
                    VStack(alignment: .leading, spacing: 5){
                        Text(post.name)
                        Text(post.desc)
                        HStack{
                            Button(action: {
                                print("hello")
                            }, label: {
                                Text(isLiked ? "Unlike" : "Like").font(.system(size: 12, weight: .light, design: .default))
                            })
                            Button(action: {}, label: {
                                Text("Comment").font(.system(size: 12, weight: .light, design: .default))
                            })
                            Spacer()
                            Button(action: {}, label: {
                                Text("Share").font(.system(size: 12, weight: .light, design: .default))
                            })
                        }
                    }
                    Spacer()
                }.padding()
            }
            
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView(searchText: .constant(""))
    }
}




