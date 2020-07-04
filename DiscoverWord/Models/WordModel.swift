//
//  WordModel.swift
//  DiscoverWord
//
//  Created by Somya on 04/07/20.
//  Copyright © 2020 Somya. All rights reserved.
//

import Foundation

struct WordApi : Codable {
    
    let word: String?
    let results: [Results]?
    let syllables: [Syllables]?
    let frequency: Float?
}

struct Results: Codable {
    
    let definition: String?
    let partOfSpeech: String?
    let synonyms: [String]?
    let typeOf: [String]?
}

struct Syllables: Codable {
    
    let count: Int?
    let list: [String]?
}
