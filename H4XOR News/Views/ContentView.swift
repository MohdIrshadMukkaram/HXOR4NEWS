//
//  ContentView.swift
//  H4XOR News
//
//  Created by Mohammed Irshad on 2024-05-15.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var networkManager = NetworkManager()
    var body: some View {
        NavigationView{
            List(networkManager.posts) { post in
                NavigationLink(destination: DetailView(url: post.url)) {
                    HStack {
                        Text(String(post.points))
                        Text(post.title)
                    }
                }
            }
            .navigationTitle("H4XOR NEWS")
        }
        .onAppear(perform: {
            self.networkManager.fetchData()
        })
    }
}

#Preview {
    ContentView()
}

// Identifiable to make Post identify by id field.

//let posts = [
//    Post(id: "1", title: "Hello"),
//    Post(id: "2", title: "Bonjour"),
//    Post(id: "3", title: "Assalamualikum"),
//]
