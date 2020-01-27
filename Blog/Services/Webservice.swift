//
//  Webservice.swift
//  Blog
//
//  Created by mani.vallabdas on 1/17/20.
//  Copyright © 2020 CocoaSwift. All rights reserved.
//

import Foundation

class Webservice {
    
    func getAllPosts(completion: @escaping ([Post]) -> ()) {
        
        guard let urls = URL(string: "https://jsonplaceholder.typicode.com/posts") else {
            fatalError("URL is invalid!")
        }
        
        URLSession.shared.dataTask(with: urls) { data, _, _ in
            let posts = try! JSONDecoder().decode([Post].self, from: data!)
            DispatchQueue.main.async {
                completion(posts)
            }
        }.resume()
    }
}
