//
//  ProfileView.swift
//  Redesigned_Instagram
//
//  Created by Bryan Sánchez Peralta on 23/11/22.
//

import SwiftUI

struct ProfileView: View {
    @State private var selection = 0
    
    var body: some View {
        NavigationView {
            VStack(alignment: .leading) {
                HStack() {
                    BigStoryView()
                    
                    ZStack {
                        RoundedRectangle(cornerRadius: 16)
                            .fill(Color(.systemGray5))
                            .frame(width: 70, height: 70)
                        
                        VStack(alignment: .center) {
                            Text("**323**")
                            Text("Posts").font(.system(size: 14))
                        }
                    }
                    
                    ZStack {
                        RoundedRectangle(cornerRadius: 16)
                            .fill(Color(.systemGray5))
                            .frame(width: 70, height: 70)
                        
                        VStack(alignment: .center) {
                            Text("**1M**")
                            Text("followers").font(.system(size: 14))
                        }
                    }
                    
                    ZStack {
                        RoundedRectangle(cornerRadius: 16)
                            .fill(Color(.systemGray5))
                            .frame(width: 70, height: 70)
                        
                        VStack(alignment: .center) {
                            Text("**259**")
                            Text("follows").font(.system(size: 14))
                        }
                    }
                }
                
                Text("Photographer")
                
                HStack {
                    Button{
                        
                    } label: {
                        Text("Edit your profile").frame(maxWidth:.infinity)
                    }.buttonStyle(.bordered)
                    
                    Button {
                        
                    } label: {
                        Image(systemName: "person.badge.plus")
                    }.buttonStyle(.bordered)
                }
                
                VStack {
                    Picker("What is your favorite color?", selection: $selection) {
                        Image(systemName: "square.grid.3x3.square").tag(0)
                        Image(systemName: "person.crop.square.filled.and.at.rectangle").tag(1)
                    }.pickerStyle(.segmented)
                    
                    ScrollView(showsIndicators: false) {
                        LazyVGrid(columns: [GridItem(), GridItem(), GridItem()], spacing: 40) {
                            ForEach((1...3), id: \.self) {
                                Image("PostImage\($0)").resizable().scaledToFill().frame(width: 110, height: 110)
                            }
                        }
                    }
                }
            }.padding()
            .navigationTitle("bryansanchez233")
            .navigationBarItems(
                trailing: HStack {
                    Image(systemName: "plus.app")
                    Image(systemName: "folder.badge.person.crop")
                }
            )
        }
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
