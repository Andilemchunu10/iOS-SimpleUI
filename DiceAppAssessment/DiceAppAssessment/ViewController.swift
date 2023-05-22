//
//  ViewController.swift
//  DiceAppAssessment
//
//  Created by DA MAC M1 161 on 2023/05/22.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var DiceImage1: UIImageView!

    @IBOutlet weak var DiceImage2: UIImageView!
    
    let ImageName = ["1","2","3","4","5","6"]
    var leftDice = 5
    var rightDice = 0

    override func viewDidLoad() {
        super.viewDidLoad()
        
        DiceImage1.image = UIImage(named: "3")
        DiceImage2.image = UIImage(named: "2")
        // Do any additional setup after loading the view.
    }


    @IBAction func buttonPressed(_ sender: Any) {
        
        DiceImage1.image = [#imageLiteral(resourceName: "1"), #imageLiteral(resourceName: "2"), #imageLiteral(resourceName: "3"), #imageLiteral(resourceName: "4") , #imageLiteral(resourceName: "5") , #imageLiteral(resourceName: "6")][leftDice]
        DiceImage2.image = [#imageLiteral(resourceName: "1"), #imageLiteral(resourceName: "2"), #imageLiteral(resourceName: "3"), #imageLiteral(resourceName: "4") , #imageLiteral(resourceName: "5") , #imageLiteral(resourceName: "6")][rightDice]
        
        rightDice = rightDice + 1
        leftDice = leftDice - 1
        
//        let randomIndex1=Int.random(in:0..<ImageName.count)
//                let randomIndex2 = Int.random(in: 0..<ImageName.count)
//
//                DiceImage1.image = UIImage(named: ImageName[randomIndex1])
//                DiceImage2.image = UIImage(named: ImageName[randomIndex2])
    }
}

