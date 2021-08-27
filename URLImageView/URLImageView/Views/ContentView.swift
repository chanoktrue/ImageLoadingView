//
//  ContentView.swift
//  URLImageView
//
//  Created by Thongchai Subsaidee on 27/8/2564 BE.
//

import SwiftUI



struct ContentView: View {
    
    let size = UIScreen.main.bounds.size
    
    var body: some View {
        VStack {
            
            // iamge 1
            UrlImageView(urlString: UrlMode().imageUrl1)
                .frame(height: size.height / 3)
                .padding()
            
            Spacer()
            
            // Image2
            UrlImageView(urlString: UrlMode().imageUrl2)            
                .frame(height: size.height / 3)
            
            Spacer()
            
            // Image3
            UrlImageView(urlString: UrlMode().imageUrl3)
                .frame(height: size.height / 3)
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
