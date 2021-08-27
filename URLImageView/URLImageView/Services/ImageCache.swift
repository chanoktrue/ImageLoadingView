//
//  ImageCache.swift
//  URLImageView
//
//  Created by Thongchai Subsaidee on 27/8/2564 BE.
//

import SwiftUI

class ImageCache {
    
    static let shared = ImageCache()
    
    var cache = NSCache<NSString, UIImage>()
    
    func get(forkey: String) -> UIImage? {
        return cache.object(forKey: NSString(string: forkey))
    }
    
    func set(forkey: String, image: UIImage ) {
        cache.setObject(image, forKey: NSString(string: forkey))
    }
    
}


extension ImageCache {
    
    private static var imageCache = ImageCache()
    
    static func getImageCache() -> ImageCache {
        return imageCache
    }
}
