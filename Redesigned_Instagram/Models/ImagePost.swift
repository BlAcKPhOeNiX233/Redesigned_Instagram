//
//  ImagePost.swift
//  Redesigned_Instagram
//
//  Created by Bryan Sánchez Peralta on 21/11/22.
//

import Foundation

class ImagePost: Post, PostsItem {
    let image: String
    
    init(
        creatorImage: String,
        creatorName: String,
        likes: Int,
        description: String,
        commentsNumber: Int,
        publishTime: String,
        image: String
    ) {
        self.image = image
        
        super.init(
            creatorImage: creatorImage,
            creatorName: creatorName,
            likes: likes,
            description: description,
            commentsNumber: commentsNumber,
            publishTime: publishTime
        )
    }
}
