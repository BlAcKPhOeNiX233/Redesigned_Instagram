//
//  MiniStoryView.swift
//  Redesigned_Instagram
//
//  Created by Bryan Sánchez Peralta on 23/11/22.
//

import SwiftUI

struct MiniStoryView: View {
    let story: Story

    var body: some View {
        HStack {
            ZStack {
                Image(story.circle)
                    .resizable()
                    .frame(width: 50, height: 50)
                
                Image(story.image)
                    .resizable()
                    .scaledToFill()
                    .frame(width: 40, height: 40)
                    .cornerRadius(100)
            }
            Text(story.name)
        }
    }
}

struct MiniStoryView_Previews: PreviewProvider {
    static var previews: some View {
        MiniStoryView(
            story: Story(
                name: "User",
                image: "ProfileImage1",
                saw: false,
                strictFriends: false
            )
        )
    }
}
