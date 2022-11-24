//
//  PostsItem.swift
//  Redesigned_Instagram
//
//  Created by Bryan Sánchez Peralta on 21/11/22.
//

import Foundation

protocol PostsItem {
    var creatorImage: String { get }
    var creatorName: String { get }
    var likes: Int { get }
    var description: String { get }
    var commentsNumber: Int { get }
    var publishTime: String { get }
}
