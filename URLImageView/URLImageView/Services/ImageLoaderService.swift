//
//  ImageLoaderService.swift
//  URLImageView
//
//  Created by Thongchai Subsaidee on 27/8/2564 BE.
//

import SwiftUI

class ImageLoaderService {
    
    static let shared = ImageLoaderService()

 
    func getImage(urlString: String, completion: @escaping ((UIImage?)->())) {

        guard  let url = URL(string: urlString) else {
            completion(nil)
            return
        }
        
        let task = URLSession.shared.dataTask(with: url) { data, response, error in
            
            guard let data = data, error == nil else {
                completion(nil)
                return
            }
            
            DispatchQueue.main.async {
                if let image = UIImage(data: data) {
                    completion(image)
                }else {
                    completion(nil)
                }

            }
            

        }
        
        task.resume()
    }
    
}
