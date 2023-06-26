//
//  FeaturePlaylistsResponse.swift
//  Spotify
//
//  Created by Николай Гринько on 13.06.2023.
//

import Foundation

// Возможно PlaylistResponse должен быть [PlaylistResponse]

struct FeaturedPlaylistsResponse: Codable {
    let playlists: PlaylistResponse
    
}

struct CategoryPlaylistsResponse: Codable {
    let playlists: PlaylistResponse
    
}

struct PlaylistResponse: Codable {
    let items: [Playlist]
}



struct User: Codable {
    let display_name: String
    let external_urls: [String: String]
    let id: String
}
