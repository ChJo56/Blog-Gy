//
//  ContentView.swift
//  Blog
//
//  Created by mani.vallabdas on 1/17/20.
//  Copyright © 2020 CocoaSwift. All rights reserved.
//

import SwiftUI
import Combine
import Foundation

struct ContentView: View {
    
    @State var model = PostList()
    
    var body: some View {
        List(model.posts) { post in
            Text(post.title)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
