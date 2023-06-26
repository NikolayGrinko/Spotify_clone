//
//  UserProfile.swift
//  Spotify
//
//  Created by Николай Гринько on 08.06.2023.
//

import Foundation

struct UserProfile: Codable {
    
    let country: String
    let display_name: String
    let email: String
    let explicit_content: [String: Bool]
    let external_urls: [String: String]
    let id: String
    let product: String
    let images: [APIImage]
}








































/*
 {
     country = GE;
     "display_name" = Nikolay;
     email = "grinkonikolka@gmail.com";
     "explicit_content" =     {
         "filter_enabled" = 0;
         "filter_locked" = 0;
     };
     "external_urls" =     {
         spotify = "https://open.spotify.com/user/31vs3mz3vihrx4xebir4hco223a4";
     };
     followers =     {
         href = "<null>";
         total = 0;
     };
     href = "https://api.spotify.com/v1/users/31vs3mz3vihrx4xebir4hco223a4";
     id = 31vs3mz3vihrx4xebir4hco223a4;
     images =     (
                 {
             height = "<null>";
             url = "https://i.scdn.co/image/ab6775700000ee850b6026e31443f08bcf01c824";
             width = "<null>";
         }
     );
     product = free;
     type = user;
     uri = "spotify:user:31vs3mz3vihrx4xebir4hco223a4";
 }
 */
