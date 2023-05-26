//
//  DetailsViewController.swift
//  Models
//
//  Created by DA MAC M1 161 on 2023/05/24.
//

import UIKit

class DetailsViewController: UIViewController {

    @IBOutlet weak var titleLabell: UILabel!
    @IBOutlet weak var numberLabel: UILabel!
    
    var numLabel: String?
    var titlelbl: String?
    override func viewDidLoad() {
        super.viewDidLoad()
        
        numLabel.text = numLabel
        titleLabell.text = titleLabell

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
