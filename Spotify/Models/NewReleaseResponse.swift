//
//  NewReleaseResponse.swift
//  Spotify
//
//  Created by Николай Гринько on 13.06.2023.
//

import Foundation

struct NewReleaseResponse: Codable {
    let albums: AlbumResponse
}

struct AlbumResponse: Codable {
    let items: [Album]
}

struct Album: Codable {
    let album_type: String
    let available_markets: [String]
    let id: String
    var images: [APIImage]
    let name: String
    let release_date: String
    let total_tracks: Int
    let artists: [Artist]
}


