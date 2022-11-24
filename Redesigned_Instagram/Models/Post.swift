//
//  Post.swift
//  Redesigned_Instagram
//
//  Created by Bryan Sánchez Peralta on 21/11/22.
//

import Foundation

class Post {
    let creatorImage: String
    let creatorName: String
    let likes: Int
    let description: String
    let commentsNumber: Int
    let publishTime: String
    
    init(
        creatorImage: String,
        creatorName: String,
        likes: Int,
        description: String,
        commentsNumber: Int,
        publishTime: String
    ) {
        self.creatorImage = creatorImage
        self.creatorName = creatorName
        self.likes = likes
        self.description = description
        self.commentsNumber = commentsNumber
        self.publishTime = publishTime
    }
}
