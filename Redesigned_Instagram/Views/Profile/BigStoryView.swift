//
//  BigStoryView.swift
//  Redesigned_Instagram
//
//  Created by Bryan Sánchez Peralta on 23/11/22.
//

import SwiftUI

struct BigStoryView: View {
    var body: some View {
        HStack {
            VStack(alignment: .leading) {
                ZStack {
                    Image("ProfileImage1")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 100, height: 100)
                        .cornerRadius(100)
                    
                    HStack {
                        Spacer()
                        VStack {
                            Spacer()
                            ZStack {
                                Circle()
                                    .frame(width: 20, height: 20)
                                    .foregroundColor(.white)
                                Image(systemName: "plus.circle.fill")
                                    .resizable()
                                    .frame(width: 30, height: 30)
                                    .foregroundColor(.blue)
                                    .overlay(
                                        Circle().stroke(.background, lineWidth: 2)
                                    )
                            }
                        }
                    }.frame(width: 100, height: 100)
                }
                
                Text("**Bryan Sanchez**")
            }
            
            Spacer()
        }
    }
}

struct BigStoryView_Previews: PreviewProvider {
    static var previews: some View {
        BigStoryView()
    }
}
