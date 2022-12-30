//
//  SearchResults.swift
//  LearningPodcast
//
//  Created by Le Tong Minh Hieu on 30/12/2022.
//

import Foundation

struct SearchResults: Decodable {
    let resultCount: Int
    let results: [Podcast]
}
