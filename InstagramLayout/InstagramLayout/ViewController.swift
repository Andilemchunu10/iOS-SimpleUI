//
//  ViewController.swift
//  InstagramLayout
//
//  Created by DA MAC M1 161 on 2023/05/22.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var imageView2: UIImageView!
    
    let imageNames = ["colo","colo1", "colo2", "colo3", "colo4", "colo5","colo6","colo8","colo9","colo10","colo11","colo12", "colo14"]

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func buttenPressed(_ sender: UIButton) {
        
        imageView2.image = UIImage(named: imageNames[0])
        
        let randomIndex1 = Int.random(in: 0..<imageNames.count)
        
        imageView2.image = UIImage(named: imageNames[randomIndex1])

    }
    
}

