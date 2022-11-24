//
//  ContentView.swift
//  Redesigned_Instagram
//
//  Created by Bryan Sánchez Peralta on 17/11/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            TabView {
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
                        ),
                        ImagePost(
                            creatorImage: "ProfileImage8",
                            creatorName: "Natan_Almeida",
                            likes: 570,
                            description: "Snow season is just around the corner 🥵❄️",
                            commentsNumber: 317,
                            publishTime: "24 hours ago",
                            image: "PostImage2"
                        ),
                        ImagePost(
                            creatorImage: "ProfileImage2",
                            creatorName: "Tiara_Neal",
                            likes: 905,
                            description: "Can you hear me?",
                            commentsNumber: 251,
                            publishTime: "3 days ago",
                            image: "PostImage3"
                        )
                    ]
                ).tabItem {
                    Label("Feed", systemImage: "photo.stack")
                }
                
                tabItem { Label("Search", systemImage: "magnifyingglass") }
                
                tabItem { Label("Reels", systemImage: "play.square.stack") }
                
                tabItem { Label("Shop", systemImage: "bag") }
                
                ProfileView().tabItem {
                    Label("Profile", systemImage: "person.crop.circle")
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
