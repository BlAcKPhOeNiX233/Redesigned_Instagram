//
//  Story.swift
//  Redesigned_Instagram
//
//  Created by Bryan Sánchez Peralta on 20/11/22.
//

import Foundation

class Story: Identifiable {
    let name: String
    let image: String
    let circle: String
    
    init(name: String, image: String, saw: Bool, strictFriends: Bool) {
        self.name = name
        self.image = image
        if saw {
            circle = strictFriends ? "StrictFriendsCircle" : "FriendsCircle"
        } else {
            circle = "FriendsCircle"
        }
    }
}
