//
//  WebView.swift
//  H4X0R News
//
//  Created by Mohamed Elbanhawi on 25/7/20.
//  Copyright © 2020 Mohamed Elbanhawi. All rights reserved.
//
import SwiftUI
import WebKit


// Swift Ui view the represents a UIKIt view
struct WebView: UIViewRepresentable {
    typealias UIViewType = WKWebView
 
    let urlString: String?
    
    func makeUIView(context: Context) -> WKWebView {
        return WKWebView()
    }
    
    func updateUIView(_ uiView: WKWebView, context: Context) {
        if let safeSring = urlString {
            if let url = URL(string: safeSring) {
                let request = URLRequest(url: url)
                uiView.load(request)
            }
        }
    }
    
}
