//
//  APIService.swift
//  LearningPodcast
//
//  Created by Le Tong Minh Hieu on 30/12/2022.
//

import Foundation
import Alamofire

class APIService {
    static let shared = APIService()
    
    let baseiTunesSearchURL = "https://itunes.apple.com/search"
    
    func fetchPodcasts(searchText: String, completionHandler: @escaping([Podcast]) -> ()) {
        let paramaters = ["term": searchText, "media": "podcast"]
        Alamofire.request(baseiTunesSearchURL, method: .get, parameters: paramaters, encoding: URLEncoding.default, headers: nil).responseData { dataResponse in
            if let err = dataResponse.error {
                print("Failed to contact yahoo", err)
                return
            }
            
            guard let data = dataResponse.data else { return }
            do {
                let searchResult = try JSONDecoder().decode(SearchResults.self, from: data)
                completionHandler(searchResult.results)
            } catch let decodeErr {
                print("Failed to decode: ", decodeErr)
            }
        }
    }
}
