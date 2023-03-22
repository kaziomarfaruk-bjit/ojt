//
//  CourseModel.swift
//  CrashCourse
//
//  Created by Admin on 22/3/23.
//

import Foundation

struct CourseModel: Identifiable{
    let id = UUID()
    let imagePath: String
    let title: String
    let description: String
    let price: String
}



struct CourseModelList{
    static let courses = [
        CourseModel(imagePath: "mt-1", title: "SwiftUI Masterclass 2023", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus egestas convallis sem, in aliquam mauris porttitor non. Nunc nec mi a est varius aliquam et ut eros. Vivamus quis enim et ligula viverra iaculis vitae eget felis. Nulla eu cursus mauris, ultricies maximus eros. Maecenas felis quam, ultrices vel accumsan in, molestie vitae nibh. Aenean venenatis varius tempor. Phasellus maximus quis lacus eget egestas. Nunc eu metus sit amet nunc ultrices dignissim nec non magna. Phasellus ut mi sit amet dui ornare aliquet. Aenean id ipsum bibendum, commodo diam mattis, luctus lorem. Nunc dapibus ultricies magna, id accumsan urna mollis id. Duis eget massa nec sem ultricies dignissim. Ut sodales ac nibh ac consectetur. Cras semper ultrices magna, in faucibus lectus fringilla ac. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Vestibulum pharetra erat sit amet ullamcorper dictum. Vestibulum sit amet dui ac dolor venenatis semper. Sed tincidunt enim vitae efficitur gravida. Nam ut nibh mauris. Sed id lectus a ante convallis facilisis. Curabitur volutpat luctus turpis, ac aliquam massa ultrices in. Maecenas rhoncus ante vitae purus consequat aliquet. Mauris nibh urna, ornare ac pulvinar in, varius id libero. Donec at enim malesuada, egestas nisi eu, rutrum augue. Nulla facilisi. Nunc sapien magna, vehicula sed nisl non, molestie cursus neque. Sed mattis eros quis odio mattis, id auctor nisi placerat. Suspendisse potenti. Proin elementum felis orci, nec imperdiet metus efficitur sit amet. Aenean in nisi volutpat, aliquet dui et, ornare nulla. Curabitur mattis luctus porttitor. Curabitur lobortis dui et nibh convallis sagittis. Praesent quis velit in magna condimentum pellentesque ut eget sapien. Proin congue leo sed pharetra rutrum. Suspendisse id tortor eu lectus sollicitudin accumsan vel id ligula. Etiam nec libero non lacus tristique dictum. In at tempor erat. Integer dictum turpis eu urna tincidunt, vulputate efficitur nisi imperdiet. Maecenas auctor erat purus, feugiat volutpat eros molestie vel. In blandit a turpis vitae elementum. Pellentesque elementum vitae erat id fermentum. Aliquam tempor orci leo, nec pharetra justo lobortis in. In mattis molestie est, fermentum laoreet sapien consequat ut. Vivamus sit amet porttitor neque, ac blandit lectus. Nullam pretium luctus leo. Ut felis mi, consequat dapibus ullamcorper eget, ultricies eu quam. Morbi consectetur quis nisl at pulvinar. Donec et eros dictum sapien ullamcorper convallis in eu ex. Phasellus vel leo elementum, semper quam in, ornare ligula. In hac habitasse platea dictumst. Duis orci lorem, vehicula sed ante a, auctor consequat libero. Aenean porta quam ac iaculis fermentum. Phasellus rhoncus tortor lacus, eget fermentum lectus porta quis. Donec a est urna. Sed faucibus est id semper iaculis. Nullam ac vulputate nisi. Praesent id sagittis velit. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Duis odio lorem, tristique in interdum ullamcorper, dignissim sed turpis. Morbi velit purus, feugiat in consectetur vitae, luctus quis mauris. Aliquam pretium urna a turpis mattis dignissim. Etiam tincidunt mauris ut dolor fermentum, quis suscipit purus laoreet. Sed sit amet ultrices tortor. Vestibulum id nunc eget ante posuere vehicula vitae et dolor. Proin ac porttitor urna, sit amet tempus nibh. Maecenas porta tristique tortor, vitae dapibus urna placerat in.", price: "100"),
        CourseModel(imagePath: "mt-2", title: "SwiftUI - The Complete iOS 16", description: "Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.", price: "150"),
        CourseModel(imagePath: "mt-3", title: "iOS & Swift - The Complete iOS App Development", description: "Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.", price: "120"),
        CourseModel(imagePath: "mt-4", title: "SwiftUI - Declarative Interfaces for any Apple Device", description: "Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore.", price: "100"),
        CourseModel(imagePath: "mt-5", title: "Deep Dive iOS 16 Swift / SwiftUI Programming", description: "Eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.", price: "120"),
        CourseModel(imagePath: "mt-6", title: "Building a Reminders App Clone with SwiftUI", description: "Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium.", price: "90"),
        CourseModel(imagePath: "mt-7", title: "SwiftUI Cookbook - Over 100 Recipes for Building iOS Apps", description: "Totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo.", price: "40"),
        CourseModel(imagePath: "mt-8", title: "The Complete iOS 16 / iOS 15 Developer Course", description: "Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores.", price: "80"),
        CourseModel(imagePath: "mt-9", title: "MV Design Pattern in iOS - Build SwiftUI Apps", description: "Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet.", price: "100"),
        CourseModel(imagePath: "mt-10", title: "Noob to App Store - iPhone Apps with Swift", description: "Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur.", price: "100")

    ]

}
