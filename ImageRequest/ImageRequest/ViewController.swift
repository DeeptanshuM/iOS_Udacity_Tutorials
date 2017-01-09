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
      let imageURl = URL(string: "https://upload.wikimedia.org/wikipedia/commons/2/25/Majestic_Liberty.jpg")!
      
      
    }
}
