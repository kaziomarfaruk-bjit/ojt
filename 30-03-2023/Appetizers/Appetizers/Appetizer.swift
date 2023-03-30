//
//  Appetizer.swift
//  Appetizers
//
//  Created by Kazi Omar Faruk on 30/3/23.
//

import Foundation

struct Appetizer: Codable, Identifiable{
    let id: Int
    let name: String
    let description: String
    let price: Double
    let imageURL: String
    let calories: Int
    let protein: Int
    let carbs: Int
}

struct AppetizerResponse: Codable{
    let request: [Appetizer]
}

struct MockData{
    static let sampleAppetizer = Appetizer(id: 0001, name: "Burger", description: "A burger is made of other ingredients, like turkey or tofu or lamb. In fact, if you shape food into a patty, grill it, and put it on a roll or bun, you can call it a burger.", price: 89.50, imageURL: "https://www.seriouseats.com/thmb/e16lLOoVEix_JZTv7iNyAuWkPn8=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/__opt__aboutcom__coeus__resources__content_migration__serious_eats__seriouseats.com__recipes__images__2014__09__20140918-jamie-olivers-comfort-food-insanity-burger-david-loftus-f7d9042bdc2a468fbbd50b10d467dafd.jpg", calories: 99, protein: 99, carbs: 99)
    
    // https://c.ndtvimg.com/2022-06/gp4k2jro_burgers_625x300_20_June_22.jpg?im=FeatureCrop,algorithm=dnn,width=620,height=350?im=FaceCrop,algorithm=dnn,width=1200,height=886
    
    static let appetizers = [sampleAppetizer, sampleAppetizer, sampleAppetizer, sampleAppetizer]
}



