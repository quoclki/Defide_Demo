//
//  Ultities.swift
//  HomeTest_Tiki
//
//  Created by Lu Kien Quoc on 2/20/19.
//  Copyright © 2019 Lu Kien Quoc. All rights reserved.
//

import Foundation
import UIKit

class Ultities {
    
    // Get Data From URL
    static func getData(from url: URL, completion: @escaping (Data?, URLResponse?, Error?) -> ()) {
        URLSession.shared.dataTask(with: url, completionHandler: completion).resume()
    }

    // Down Image From URL
    static func getImageAsync(_ urlString: String, complete: @escaping ((UIImage?) -> ())) {
        guard let url = URL(string: urlString) else {
            complete(nil)
            return
        }

        getData(from: url) { data, response, error in
            guard let data = data, error == nil else {
                complete(nil)
                return
            }
            DispatchQueue.main.async() {
                complete(UIImage(data: data))
            }
        }
    }
    
    
}

