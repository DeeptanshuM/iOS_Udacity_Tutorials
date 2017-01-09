//
//  ViewController.swift
//  ImageRequest
//
//  Created by Jarrod Parkes on 11/3/15.
//  Copyright © 2015 Udacity. All rights reserved.
//

import UIKit

// MARK: - ViewController: UIViewController

class ViewController: UIViewController {

    // MARK: Outlets
    
    @IBOutlet weak var imageView: UIImageView!
    
    // MARK: Life Cycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // TODO: Add all the networking code here!
      
      //Watched: Creating a Request https://www.youtube.com/watch?v=GP62hNZzAJ4
      //Read: https://developer.apple.com/reference/foundation/url
      let imageURL = URL(string: "https://upload.wikimedia.org/wikipedia/commons/2/25/Majestic_Liberty.jpg")!
      
      //Watched: Understanding NSURL Session_V3 https://www.youtube.com/watch?v=Nlv8p0ZqsGw
      //Read: https://developer.apple.com/reference/foundation/urlsessiondatatask
      //Purpose of completionHandle -> closure to run block of code after task completes

      //      let task = URLSession.shared.dataTask(with: imageURl, completionHandler: <#T##(Data?, URLResponse?, Error?) -> Void#>)
      //Read: https://developer.apple.com/reference/uikit/uiimage , https://developer.apple.com/reference/uikit/uiimage/1624106-init
      
      let task = URLSession.shared.dataTask(with: imageURL) {
        (data, response, error) in
        
        if error == nil {
          let downloadedImage = UIImage(data: data!)
          
          self.imageView.image = downloadedImage
        }
      }
      
      //neccessary because URL struct doesn't do this automatically
      task.resume()
  }
}
