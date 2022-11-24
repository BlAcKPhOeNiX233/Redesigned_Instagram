//
//  StoryView .swift
//  Redesigned_Instagram
//
//  Created by Bryan Sánchez Peralta on 21/11/22.
//

import SwiftUI

struct StoryView: View {
    let story: Story
    
    var body: some View {
        HStack {
            HStack {
                ZStack {
                    Image(story.circle)
                        .resizable()
                        .frame(width: 40, height: 40)
                    
                    Image(story.image)
                        .resizable()
                        .frame(width: 30, height: 30)
                        .cornerRadius(100)
                }
                
                Text(story.name)
            }
        }
    }
}

struct StoryView__Previews: PreviewProvider {
    static var previews: some View {
        StoryView(
            story: Story(
                name: "User",
                image: "ProfileImage2",
                saw: false,
                strictFriends: false
            )
        )
    }
}
