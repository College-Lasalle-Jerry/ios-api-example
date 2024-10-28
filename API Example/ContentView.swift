//
//  ContentView.swift
//  API Example
//
//  Created by Jerry Joy on 2024-10-28.
//

import SwiftUI

struct ContentView: View {
    @StateObject var posts = PostViewModel()
    var body: some View {
        List(posts.postData){
            post in
            HStack{
                Text("\(post.userId)")
                    .padding()
                    .overlay(Circle().stroke(.blue))
                VStack(alignment: .leading) {
                    Text(post.title)
                        .bold()
                        .lineLimit(1)
                    
                    Text(post.body)
                        .font(.caption)
                        .foregroundColor(.secondary)
                        .lineLimit(2)
                }
            }
        }.onAppear{
            if posts.postData.isEmpty{
                Task{
                    await posts.fetchData()
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
