//
//  DataProvider.swift
//  DiscoverWord
//
//  Created by Somya on 04/07/20.
//  Copyright © 2020 Somya. All rights reserved.
//

import Foundation

class DataProvider {
    
    //function to make api call
    func getData(category: String, word: String) {
        
        let headers = [
            "x-rapidapi-host": Constants.X_RAPIDAPI_HOST,
            "x-rapidapi-key": Constants.API_KEY
        ]
        
        //URL string
        let urlString = "https://wordsapiv1.p.rapidapi.com/\(category)/\(word)"
        
        //URL
        let url = URL(string: urlString)
        
        if let url = url {
            var request = URLRequest(url: url, cachePolicy: .useProtocolCachePolicy, timeoutInterval: 10.0)
            
            //setting the request type
            request.httpMethod = "GET"
            
           //setting the headers field
            request.allHTTPHeaderFields = headers
            
            //get the URL session
            let session = URLSession.shared
            
            //create the data task
            let dataTask = session.dataTask(with: request as URLRequest, completionHandler: { (data, response, error) in
                if (error != nil) {
                    print(error)
                } else {
                    let httpResponse = response
                    let data = data
                    print(httpResponse)
                    
                }
            })
            
            //fire off the data task
            dataTask.resume()
            
        } else {
            print("cannot construct URL string")
        }
    }
}
