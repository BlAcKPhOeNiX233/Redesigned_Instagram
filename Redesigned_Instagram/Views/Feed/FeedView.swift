//
//  FeedView.swift
//  Redesigned_Instagram
//
//  Created by Bryan Sánchez Peralta on 17/11/22.
//

import SwiftUI

struct FeedView: View {
    let posts: Array<any PostsItem>
    
    var body: some View {
        NavigationView {
            ScrollView(showsIndicators: false) {
                StoriesView(
                        stories: [
                            Story(
                                name: "Your story",
                                image: "ProfileImage1",
                                saw: false,
                                strictFriends: false
                            ),
                            Story(
                                name: "Tiara_Neal",
                                image: "ProfileImage2",
                                saw: false,
                                strictFriends: false
                            ),
                            Story(
                                name: "Alona",
                                image: "ProfileImage3",
                                saw: false,
                                strictFriends: false
                            ),
                            Story(
                                name: "Patrick_Guerrero",
                                image: "ProfileImage4",
                                saw: false,
                                strictFriends: false
                            ),
                            Story(
                                name: "Paulychair",
                                image: "ProfileImage5",
                                saw: false,
                                strictFriends: false
                            ),
                            Story(
                                name: "Nhayonk_Lamahutu",
                                image: "ProfileImage6",
                                saw: false,
                                strictFriends: false
                            )
                        ]
                    )
                
                ForEach(0 ..< posts.count, id: \.self) { index in
                    if let imagePost = posts[index] as? ImagePost {
                        VStack() {
                            ZStack {
                                RoundedRectangle(
                                    cornerRadius: 16
                                ).fill(Color(.systemGray5))
                                
                                VStack {
                                    HStack {
                                        MiniStoryView(
                                            story: Story(
                                                name: imagePost.creatorName,
                                                image: imagePost.creatorImage,
                                                saw: false,
                                                strictFriends: false
                                            )
                                        )
                                        
                                        Spacer()
                                        
                                        Image(systemName: "ellipsis")
                                    }.padding(
                                        EdgeInsets(
                                            top: 16,
                                            leading: 16,
                                            bottom: 0,
                                            trailing: 16
                                        )
                                    )
                                    
                                    Image(imagePost.image)
                                        .resizable()
                                        .scaledToFill()
                                        .frame(height: 375)
                                        .cornerRadius(16)
                                    
                                    HStack {
                                        Image(systemName: "heart")
                                            .resizable()
                                            .scaledToFit()
                                            .frame(height: 25)
                                        
                                        Image(systemName: "bubble.right")
                                            .resizable()
                                            .scaledToFit()
                                            .frame(height: 25)
                                            .padding(EdgeInsets(top: 0, leading: 8, bottom: 0, trailing: 8))
                                        
                                        Image(systemName: "paperplane")
                                            .resizable()
                                            .scaledToFit()
                                            .frame(height: 25)
                                        
                                        Spacer()
                                        
                                        Image(systemName: "bookmark")
                                            .resizable()
                                            .scaledToFit()
                                            .frame(height: 25)
                                    }.padding(
                                        EdgeInsets(
                                            top: 8,
                                            leading: 16,
                                            bottom: 0,
                                            trailing: 16
                                        )
                                    )
                                    
                                    HStack {
                                        VStack(alignment: .leading) {
                                            Text(
                                                "Likes: **\(imagePost.likes)**"
                                            )
                                            
                                            Text(
                                                "**\(imagePost.creatorName)** \(imagePost.description)"
                                            )
                                            
                                            Text(
                                                "View all \(imagePost.commentsNumber) comments"
                                            )
                                            .foregroundColor(Color(.systemGray))
                                        }
                                        Spacer()
                                    }.padding(.horizontal, 16)
                                    
                                    HStack {
                                        Image("ProfileImage1")
                                            .resizable()
                                            .scaledToFill()
                                            .frame(width: 30, height: 30)
                                            .cornerRadius(100)
                                        
                                        Text(
                                            "Add a comment..."
                                        )
                                        .foregroundColor(Color(.systemGray))
                                        .padding(.horizontal, 8)
                                        
                                        Spacer()
                                        
                                        Text("❤️")
                                        
                                        Text("🙌")
                                        
                                        Image(
                                            systemName: "plus.circle"
                                        ).foregroundColor(Color(.systemGray))
                                        
                                    }.padding(.horizontal, 16)
                                    
                                    HStack {
                                        Text(imagePost.publishTime).foregroundColor(Color(.systemGray))
                                        Spacer()
                                    }.padding(
                                        EdgeInsets(
                                            top: 0,
                                            leading: 16,
                                            bottom: 16,
                                            trailing: 0
                                        )
                                    )
                                }
                            }
                        }
                    }
                }.padding(.horizontal)
            }
            .navigationTitle("Instagram")
            .navigationBarItems(
                trailing: HStack {
                    Image(systemName: "plus.app")
                    Image(systemName: "heart")
                    Image(systemName: "message.badge")
                }
            )
        }
    }
}

struct FeedView_Previews: PreviewProvider {
    static var previews: some View {
        FeedView(
            posts: [
                ImagePost(
                    creatorImage: "ProfileImage7",
                    creatorName: "Anna_McNaught",
                    likes: 735,
                    description: "Portrait Photography",
                    commentsNumber: 381,
                    publishTime: "18 hours ago",
                    image: "PostImage1"
                )
            ]
        )
    }
}
