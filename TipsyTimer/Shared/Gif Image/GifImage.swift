//
//  GifImage.swift
//  TipsyTimer
//
//  Created by Nina Alblas on 13/05/2022.
//

import SwiftUI
import WebKit

/*
 Makes it possible to display .gif images.
 Swift and Tips. (2021, August 22). How to display a gif in SwiftUI? [Video]. YouTube. https://www.youtube.com/watch?v=9fz8EW-dX-I
 */
struct GifImage: UIViewRepresentable {
    private let name: String
    
    init(_ name: String) {
        self.name = name
    }
    
    func makeUIView(context: Context) -> WKWebView {
        let webView = WKWebView()
        let url = Bundle.main.url(forResource: name, withExtension: "gif")!
        let data = try! Data(contentsOf: url)
        
        webView.load(data,
                     mimeType: "image/gif",
                     characterEncodingName: "UTF-8",
                     baseURL: url.deletingLastPathComponent())
        
        
        webView.scrollView.isScrollEnabled = false
        webView.backgroundColor = .clear
        webView.isOpaque = false
        return webView
    }
    
    func updateUIView(_ uiView: WKWebView, context: Context) {
        uiView.reload()
    }
}
