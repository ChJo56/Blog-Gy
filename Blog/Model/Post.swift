//
//  Post.swift
//  Blog
//
//  Created by mani.vallabdas on 1/17/20.
//  Copyright © 2020 CocoaSwift. All rights reserved.
//

import Foundation
import SwiftUI

struct Post: Codable, Hashable, Identifiable {
    let id: Int
    let title: String
    let body: String
}
