//
//  FBPostModel.swift
//  FBClone
//
//  Created by Admin on 23/3/23.
//

import Foundation

struct PostModel: Identifiable{
    var id = UUID()
    var img: String
    var name: String
    var desc: String
    var isLiked: Bool
    
    static var posts = [
        PostModel(img: "mt-1", name: "Zukerburg", desc: "Lorem Ipsum is simply dummy text of the printing and typesetting industry.", isLiked: true),
        PostModel(img: "mt-2", name: "Bill gates", desc: "Lorem Ipsum has been the industry's standard dummy text ever since the 1500s.", isLiked: false),
        PostModel(img: "mt-3", name: "Jeff Bezos", desc: "When an unknown printer took a galley of type and scrambled it to make a type specimen book.", isLiked: true),
        PostModel(img: "mt-4", name: "Steve Jobs", desc: "It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.", isLiked: false),
        PostModel(img: "mt-5", name: "Elon Mask", desc: "It was popularised in the 1960s with the release of Letraset sheets containing.", isLiked: true),
        PostModel(img: "mt-1", name: "Zukerburg", desc: "Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.", isLiked: true),
        PostModel(img: "mt-2", name: "Bill gates", desc: "It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.", isLiked: true),
        PostModel(img: "mt-3", name: "Jeff Bezos", desc: "The point of using Lorem Ipsum is that it has a more-or-less normal distribution.", isLiked: true),
        PostModel(img: "mt-4", name: "Steve Jobs", desc: "Many desktop publishing packages and web page editors now use.", isLiked: true),
        PostModel(img: "mt-5", name: "Elon Mask", desc: "Lorem Ipsum as their default model text, and a search for 'lorem ipsum' will uncover many web sites.", isLiked: true)
    ]
}

