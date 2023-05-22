//
//  ViewController.swift
//  TableViews
//
//  Created by DA MAC M1 161 on 2023/05/22.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var tableView:UITableView!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        tableView.dataSource = self
        tableView.delegate = self
    }

    }

//Mark: -Data Source Protocol
extension ViewController:UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int{
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        
        cell.textLabel?.text = "I am a row number:\(indexPath.row + 1) "
        
        return cell
    }
    }

//Mark: - Delegates
extension ViewController:UITableViewDelegate {
    func tableView(_ tableView: UITableView, dedSelectRowAt indexPath: IndexPath) {
        print ("You have clicked row number: \(indexPath.row + 1)")
               
        return cell
    }
}


