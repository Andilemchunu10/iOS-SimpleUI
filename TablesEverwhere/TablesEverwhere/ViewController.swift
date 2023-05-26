//
//  ViewController.swift
//  TablesEverwhere
//
//  Created by DA MAC M1 161 on 2023/05/23.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var tableV:UITableView!
    var names = ["asd","asdf","jhg"]

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        tableV.dataSource = self
    }


}

extension ViewController: UITableViewDataSource{
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell")
        cell?.textLabel?.text = names[indexPath.row]
        
        return cell!
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return names.count
    }
}


