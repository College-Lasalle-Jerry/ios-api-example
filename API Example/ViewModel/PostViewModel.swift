//
//  PostViewModel.swift
//  API Example
//
//  Created by Jerry Joy on 2024-10-28.
//

import Foundation

class PostViewModel: ObservableObject {
    @Published var postData = [Post]()
    
    func fetchData() async {
        guard let downloadPosts: [Post] = await WebService().downloadData(fromURL: "https://jsonplaceholder.typicode.com/posts") else {return}
        postData = downloadPosts
    }
}
