//
//  PostView.swift
//  Redesigned_Instagram
//
//  Created by Bryan Sánchez Peralta on 21/11/22.
//

import SwiftUI

struct PostsView: View {
    let posts: Array<any PostsItem>
    
    var body: some View {
        ScrollView(showsIndicators: false) {
            StoriesView(
                    stories: [
                        Story(
                            name: "User1",
                            image: "ProfileImage2",
                            saw: false,
                            strictFriends: false
                        ),
                        Story(
                            name: "User2",
                            image: "ProfileImage2",
                            saw: false,
                            strictFriends: false
                        ),
                        Story(
                            name: "User3",
                            image: "ProfileImage2",
                            saw: false,
                            strictFriends: false
                        ),
                        Story(
                            name: "User4",
                            image: "ProfileImage2",
                            saw: false,
                            strictFriends: false
                        ),
                        Story(
                            name: "User5",
                            image: "ProfileImage2",
                            saw: false,
                            strictFriends: false
                        ),
                        Story(
                            name: "User6",
                            image: "ProfileImage2",
                            saw: false,
                            strictFriends: false
                        )
                    ]
                )
            VStack() {
                ForEach(0 ..< posts.count, id: \.self) { index in
                    if let imagePost = posts[index] as? ImagePost {
                        ZStack {
                            RoundedRectangle(cornerRadius: 11).fill(.gray)
                            
                            VStack(alignment: .leading) {
                                HStack {
                                    Image(imagePost.creatorImage)
                                        .resizable()
                                        .frame(width: 40, height: 40)
                                        .cornerRadius(100)
                                    
                                    Text(imagePost.creatorName)
                                    
                                    Spacer()
                                    
                                    Image(systemName: "ellipsis")
                                }.padding(EdgeInsets(
                                    top: 8,
                                    leading: 8,
                                    bottom: 0,
                                    trailing: 8
                                ))
                                
                                Image(imagePost.image)
                                    .resizable()
                                    .cornerRadius(11)
                                
                                HStack {
                                    Image(systemName: "heart")
                                        .resizable()
                                        .scaledToFit()
                                        .frame(height: 25)
                                    
                                    Image(systemName: "bubble.right")
                                        .resizable()
                                        .scaledToFit()
                                        .frame(height: 25)
                                    
                                    Image(systemName: "paperplane")
                                        .resizable()
                                        .scaledToFit()
                                        .frame(height: 25)
                                    
                                    Spacer()
                                    
                                    Image(systemName: "bookmark")
                                        .resizable()
                                        .scaledToFit()
                                        .frame(height: 25)
                                }.padding(EdgeInsets(
                                    top: 0,
                                    leading: 8,
                                    bottom: 0,
                                    trailing: 8
                                ))
                                
                                Text(
                                    "Likes: **\(imagePost.likes)**"
                                ).padding(
                                    EdgeInsets(
                                        top: 0,
                                        leading: 8,
                                        bottom: 0,
                                        trailing: 8
                                    )
                                )
                                
                                Text(
                                    "**\(imagePost.creatorName)** \(imagePost.description)"
                                ).padding(
                                    EdgeInsets(
                                        top: 0,
                                        leading: 8,
                                        bottom: 8,
                                        trailing: 8
                                    )
                                )
                            }
                        }
                    }
                }
            }.frame(height: 600)
        }.padding()
    }
}

struct PostView_Previews: PreviewProvider {
    static var previews: some View {
        PostsView(
            posts: [
                ImagePost(
                    creatorImage: "ProfileImage2",
                    creatorName: "Anna McNaught",
                    likes: 28,
                    description: "Portrait Photography",
                    commentsNumber: 0,
                    publishTime: "",
                    image: "Image1"
                )
            ]
        )
    }
}
