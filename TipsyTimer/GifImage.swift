//
//  GifImage.swift
//  TipsyTimer
//
//  Created by Nina Alblas on 13/05/2022.
//

import SwiftUI
import WebKit

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

//struct GifImage_Previews: PreviewProvider {
//    static var previews: some View {
//        GifImage("driving_jb")
//            .edgesIgnoringSafeArea(.all)
//            .frame(width: getFrameWidth(1700), height: getFrameHeight(1100))
//            .offset(y: -100)
//
//
//        
////                    .background(Color("Nina-dark"))
////                    .aspectRatio(contentMode: .fit)
//    }
//}
