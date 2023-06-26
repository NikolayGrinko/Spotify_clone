//
//  SearchResult.swift
//  Spotify
//
//  Created by Николай Гринько on 20.06.2023.
//

import Foundation

enum SearchResult {
    case artist(model: Artist)
    case album(model: Album)
    case track(model: AudioTrack)
    case playlist(model: Playlist)
}
