//
//  PodCastService.swift
//  DaumWebtoon
//
//  Created by Tak on 12/02/2019.
//  Copyright © 2019 Gaon Kim. All rights reserved.
//

import UIKit

class PodCastService {
    
    static let shared = PodCastService()
    
    private init() { }
    
    func fetchPodCasts(podcastId: String, completion: @escaping (PodCast) -> ()) {
        let requestData = RequestData(path: HTTPBaseUrl.baseUrl.rawValue + "/podcasts/" + podcastId)
        
        FetchPodCastsAPI(data: requestData).execute(onSuccess: { (podcast) in
            completion(podcast)
        }) { (error) in
            print("onError")
        }
    }
    
}