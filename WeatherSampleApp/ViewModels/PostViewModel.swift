//
//  PostViewModel.swift
//  WeatherSampleApp
//
//  Created by Hatice Sarp on 17.02.2026.
//
import Foundation
import Combine

@MainActor
class PostViewModel: ObservableObject {
    
    @Published var posts: [Post] = []
    @Published var isLoading: Bool = false
    @Published var errorMessage: String?
    
    private let service = PostService()
    
    func fetchPosts(){
        isLoading = true
        errorMessage = nil

        service.fetchPosts { [weak self] result in
            guard let self = self else { return }
            
            self.isLoading = false
            
            switch result {
            case .success(let posts):
                self.posts = posts
            case .failure(let error):
                self.errorMessage = error.localizedDescription
            }
        }
    }
}
