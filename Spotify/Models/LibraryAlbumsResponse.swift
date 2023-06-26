//
//  LibraryAlbumsResponse.swift
//  Spotify
//
//  Created by Николай Гринько on 26.06.2023.
//

import Foundation

struct LibraryAlbumsResponse: Codable {
    
    let items: [SavedAlbum]
    
}

struct SavedAlbum: Codable {
    let added_at: String
    let album: Album
}
