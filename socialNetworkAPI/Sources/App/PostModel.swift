//
//  File.swift
//  
//
//  Created by Edoardo Troianiello on 25/01/23.
//

import Foundation
import SwiftUI
import Vapor

struct Post: Identifiable, Hashable, Codable , Content {
    var id = UUID()
    var description: String
    var imageName: String
    var code: String
    var image: Image {
        Image(imageName)
    }
    var collections : [String]
//    var userId : UUID
}


