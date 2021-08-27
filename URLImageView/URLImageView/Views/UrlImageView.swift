//
//  UrlImageView.swift
//  URLImageView
//
//  Created by Thongchai Subsaidee on 27/8/2564 BE.
//

import SwiftUI

struct UrlImageView: View {
    
    @State var image: UIImage?
    @State var isLoading: Bool = false
    
    var urlString: String
    
    init(urlString: String) {
        self.urlString = urlString
    }
    
    var body: some View {
        ZStack {
            
            if isLoading {
                ProgressView()
                    .scaleEffect(2)
            }
            
            Image(uiImage: image ?? UIImage())
                .resizable()
                .scaledToFit()
        }
        .onAppear {
            isLoading = true
            ImageLoaderService.shared.getImage(urlString: urlString) { image in
                self.image = image
                self.isLoading = false
            }
        }
    }
    
}


