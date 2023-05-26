//
//  ViewController.swift
//  TablesandSearch
//
//  Created by DA MAC M1 161 on 2023/05/23.
//

import UIKit

class ViewController: UIViewController, UISearchBarDelegate {
    
    var names = ["asdf","ytr", "iuhgbv","bgfe"]
    

    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var searchBar: UISearchBar!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.dataSource = self
        
        searchBar.delegate = self
           
        searchBar.placeholder = "Search"
        searchBar.searchBarStyle = .minimal
        
    }


}

extension ViewController : UITableViewDataSource{
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell")
        
        cell?.textLabel?.text = names[indexPath.row]
        
        return cell!
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return names.count
    }
}
