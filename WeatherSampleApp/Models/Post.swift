//
//  Post.swift
//  WeatherSampleApp
//
//  Created by Hatice Sarp on 13.02.2026.
//

struct Post: Identifiable, Codable{
    let userId: Int
    let id: Int
    let title: String
    let body: String
}
