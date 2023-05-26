//
//  ViewController.swift
//  TablesLesson
//
//  Created by DA MAC M1 161 on 2023/05/22.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var tableView:UITableView!
    var cars = ["Toyota","Hyundai", "Mini Cooper", "Renault","VW", "Mercedes", "BMW","Ferrari", "Bentley", "Fiat","Audi", "Volvo","Mazda", "Ford", "Haval", "Ormoda","Alfa Romeo", "Lamborghini", "Honda", "Suzuki","Opel","Nissan","Tesla","Peugot","Lexus","Chevrolet","Rolls Royce", "Chrysteler"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
                tableView.dataSource = self
               
    }
    
}

extension ViewController : UITableViewDataSource{
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell")
        
        cell?.textLabel?.text = cars[indexPath.row]
        
        return cell!
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int{
        return cars.count
        }
        
}
//extension ViewController:UITableViewDelegate{
//    func tableView(_ tableView: UITableView, cellForRowAt section: Int) -> Int{
//
//            return cell
//        }
//    }


