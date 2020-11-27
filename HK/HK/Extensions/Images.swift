//
//  Images.swift
//  HK
//
//  Created by Cedric Bahirwe on 11/26/20.
//  Copyright © 2020 Cedric Bahirwe. All rights reserved.
//

import Foundation
import UIKit


// global imageCache object
var imageCache = NSCache<NSString,AnyObject>()

extension UIImageView {

    // This method loads an image from a URL or from a localized cache if it is available
    func loadImageUsingCacheWithUrlString(urlString:String) {
        
        // get the current image
        let currentImage = self.image
        
        // Reset the image
        self.image = nil
        
        let activityIndicator = UIActivityIndicatorView()
        self.addSubview(activityIndicator)
        activityIndicator.color = UIColor.brandPrimary
        activityIndicator.frame.size = self.frame.size
        activityIndicator.startAnimating()
        
        // Check for cache image first
        if let cacheImage = imageCache.object(forKey: urlString as NSString) as? UIImage {
            activityIndicator.removeFromSuperview()
            self.image = cacheImage
            return
        }
        // Set up the URL request
        let todoEndpoint: String = urlString
        guard let url = URL(string: todoEndpoint) else {
            activityIndicator.removeFromSuperview()
            self.image = currentImage
            return
        }
        
        let urlRequest = URLRequest(url: url)
        
        // Set up a URL session to call for image
        let config = URLSessionConfiguration.default
        let session = URLSession(configuration: config)
        
        // Make the request
        let task = session.dataTask(with: urlRequest, completionHandler: { (data, response, error) in
            if error != nil {
                print("Could not download image")
                DispatchQueue.main.async {
                    activityIndicator.removeFromSuperview()
                    self.image = currentImage
                }
                return
            }
            
            // Set view object to downloaded image and setup cache for future calls
            DispatchQueue.main.async {
                if let downloadedImage = UIImage(data:data!) {
                    imageCache.setObject(downloadedImage, forKey: urlString as NSString)
                    self.image = downloadedImage
                } else{
                    self.image = currentImage
                }
                // Remove the activity Indicator
                activityIndicator.removeFromSuperview()
            }
            
        })
        task.resume()
    }
}
