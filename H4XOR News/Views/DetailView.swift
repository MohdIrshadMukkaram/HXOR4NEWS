//
//  DetailView.swift
//  H4XOR News
//
//  Created by Mohammed Irshad on 2024-05-15.
//

import SwiftUI
import WebKit

struct DetailView: View {
    var url: String?
    var body: some View {
        WebView(urlString: url)
    }
}

#Preview {
    DetailView(url: "")
}

struct WebView: UIViewRepresentable {
    let urlString: String?
    func makeUIView(context: Context) -> WebView.UIViewType {
        return WKWebView()
    }
    func updateUIView(_ uiView: WKWebView, context: Context) {
        if let safeString = urlString {
            if let url = URL(string: safeString) {
                let request = URLRequest(url: url)
                uiView.load(request)
            }
        }
    }
}
