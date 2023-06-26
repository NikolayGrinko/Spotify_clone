//
//  SettingsModels.swift
//  Spotify
//
//  Created by Николай Гринько on 12.06.2023.
//

import Foundation

struct Section {
    let title: String
    let options: [Option]
}

struct Option {
    let title: String
    let handler: () -> Void
}
