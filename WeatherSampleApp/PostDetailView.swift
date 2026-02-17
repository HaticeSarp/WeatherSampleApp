//
//  PostDetailView.swift
//  WeatherSampleApp
//
//  Created by Hatice Sarp on 17.02.2026.
//
import SwiftUI

struct PostDetailView: View {
    let post : Post
    var body: some View {
        ScrollView{
            VStack(alignment: .leading, spacing: 16) {
                Text(post.title)
                    .font(.title)
                    .bold()
                Text(post.body)
                    .font(.body)
            }.padding()
            
        }   .navigationTitle("Post Detail")
            .navigationBarTitleDisplayMode(.inline)
    }
}
    
    #Preview {
        PostDetailView( post: Post(
            userId: 1,
            id: 1,
            title: "Sample Title",
            body: "Sample body text"
        )
     )
 }

