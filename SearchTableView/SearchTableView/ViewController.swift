//
//  ViewController.swift
//  SearchTableView
//
//  Created by DA MAC M1 161 on 2023/05/23.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as? TableViewCell else {return TableViewCell()}
        
        cell.firstNameLabel.text = "Andy"
        cell.lastNameLabel.text = "Budeli"
        cell.emailLabel.text = "andykne@gmail.com"
        
        cell.imageLabel.image = UIImage(systemName: "scribble")
                return cell
    }
    

    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        tableView.dataSource = self
    }


}

