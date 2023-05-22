//
//  SecondVC.swift
//  Navigation
//
//  Created by DA MAC M1 161 on 2023/05/19.
//

import UIKit

class SecondVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
   
    
    @IBAction func ButtonPressed(_ sender: Any) {
        let storyboard = self.storyboard?.instantiateViewController(withIdentifier: "ThirdVC") as? ThirdVC
        self.navigationController?.pushViewController(<#T##viewController: UIViewController##UIViewController#>, animated: true)
    }
    
}
