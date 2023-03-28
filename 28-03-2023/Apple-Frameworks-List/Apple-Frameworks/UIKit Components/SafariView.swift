//
//  SafariView.swift
//  Apple-Frameworks
//
//  Created by Kazi Omar Faruk on 28/3/23.
//

import SwiftUI
import SafariServices

struct SafariView: UIViewControllerRepresentable{
    let url: URL
    func makeUIViewController(context: UIViewControllerRepresentableContext<SafariView>) -> SFSafariViewController {
        return SFSafariViewController(url: url)
    }
    func updateUIViewController(_ uiViewController: SFSafariViewController, context: UIViewControllerRepresentableContext<SafariView>) {
        
    }
}
