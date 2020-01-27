//
//  PostList.swift
//  Blog
//
//  Created by mani.vallabdas on 1/17/20.
//  Copyright © 2020 CocoaSwift. All rights reserved.
//

import Foundation
import SwiftUI
import Combine
import UIKit

final class PostList: ObservableObject {
    
    init() {
        fetchPosts()
    }
    
    var posts = [Post]() {
        didSet {
            didChange.send(self)
        }
    }
    
    private func fetchPosts() {
        Webservice().getAllPosts {
            self.posts = $0
        }
    }
    
    let didChange = PassthroughSubject<PostList, Never>()
}
