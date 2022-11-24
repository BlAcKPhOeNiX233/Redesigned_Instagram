//
//  StoryView.swift
//  Redesigned_Instagram
//
//  Created by Bryan Sánchez Peralta on 18/11/22.
//

import SwiftUI

struct StoriesView: View {
    let stories: Array<Story>
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack {
                Spacer()
                ForEach(stories) { item in
                    VStack {
                        ZStack {
                            Image(item.image)
                                .resizable()
                                .scaledToFill()
                                .frame(width: 70, height: 70)
                                .cornerRadius(100)
                            
                            if item.name.elementsEqual("Your story") {
                                HStack {
                                    Spacer()
                                    VStack {
                                        Spacer()
                                        ZStack {
                                            Circle()
                                                .frame(width: 25, height: 25)
                                                .foregroundColor(.white)
                                            Image(systemName: "plus.circle.fill")
                                                .resizable()
                                                .frame(width: 25, height: 25)
                                                .foregroundColor(.blue)
                                                .overlay(Circle().stroke(.background, lineWidth: 4))
                                        }
                                    }
                                }.frame(width: 70, height: 70)
                            } else {
                                Image(item.circle)
                                    .resizable()
                                    .frame(width: 85, height: 85)
                            }
                        }.frame(width: 85, height: 85)
                        
                        Text(item.name).lineLimit(1)
                    }.frame(width: 86)
                }
                
                Spacer()
            }
        }
        
    }
}

struct StoryView_Previews: PreviewProvider {
    static var previews: some View {
        StoriesView(
            stories: [
                Story(
                    name: "Your story",
                    image: "ProfileImage1",
                    saw: false,
                    strictFriends: false
                ),
                Story(
                    name: "User2",
                    image: "ProfileImage2",
                    saw: false,
                    strictFriends: false
                )
            ]
        )
    }
}
