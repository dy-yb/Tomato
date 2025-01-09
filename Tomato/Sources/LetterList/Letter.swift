//
//  Letter.swift
//  Tomato
//
//  Created by Daye on 1/3/25.
//

import Foundation

struct Letter: Identifiable {
    let id = UUID()
    let recipient: String
    let content: String
    let creationDate = Date()
}
