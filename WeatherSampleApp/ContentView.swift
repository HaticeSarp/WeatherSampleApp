//
//  ContentView.swift
//  WeatherSampleApp
//
//  Created by Hatice Sarp on 13.02.2026.
//

import SwiftUI

struct ContentView: View {
    
    @StateObject private var viewModel = PostViewModel()

    var body: some View {
        NavigationStack {
            Group{
                if viewModel.isLoading {
                    ProgressView("Loading")
                }else if let error = viewModel.errorMessage {
                    Text(error)
                        .foregroundColor(.red)
                }else{
                    List(viewModel.posts) { post in
                        VStack(alignment: .leading, spacing: 8) {
                            Text(post.title)
                                .font(.headline)
                            
                            Text(post.body)
                                .font(.subheadline)
                                .foregroundStyle(.secondary)
                        }
                        .padding(.vertical, 4)
                    }
                }
            }.navigationTitle("Posts")
        }
        .onAppear{
            viewModel.fetchPosts()
        }
    }
}

#Preview {
    ContentView()
}
