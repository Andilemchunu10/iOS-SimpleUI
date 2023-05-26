import UIKit

class ToDoViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var idLabel: UILabel!
    var array = [Todo]()
    var searchingArray = [Todo]()
    var searching = false

    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.dataSource = self
        tableView.delegate = self
        fetchApiData(URL: "https://jsonplaceholder.typicode.com/todos") { result in
            self.array = result
            DispatchQueue.main.async {
                self.tableView.reloadData()
            }
        }
    }
    
    func fetchApiData(URL url: String, completion: @escaping ([Todo]) -> Void) {
        guard let url = URL(string: url) else {
            print("Invalid URL")
            return
        }
        
        let session = URLSession.shared
        let dataTask = session.dataTask(with: url) { data, response, error in
            if let data = data {
                do {
                    let parsedData = try JSONDecoder().decode([Todo].self, from: data)
                    completion(parsedData)
                } catch {
                    print("Parsing error: \(error)")
                }
            } else if let error = error {
                print("API request error: \(error)")
            }
        }
        
        dataTask.resume()
    }
}

//081 069 8827
extension ToDoViewController: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if searching {
            return searchingArray.count
        } else {
            return array.count
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell  {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "ToDoTableViewCell", for: indexPath) as? ToDoTableViewCell else {
            return UITableViewCell()
        }
        
        let todo: Todo
        
        if searching {
            todo = searchingArray[indexPath.row]
        } else {
            todo = array[indexPath.row]
        }
        
        cell.idLabel.text = "ID: \(todo.id)"
        cell.titleLabel.text = todo.title
        
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, editingStyleForRowAt indexPath: IndexPath) -> UITableViewCell.EditingStyle {
        return .delete
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            array.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .automatic)
        }
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let vc = storyboard?.instantiateViewController(withIdentifier: "DetailsViewController") as! DetailsViewController
        vc.numLabel = "\(array[indexPath.row].id)"
        vc.titleLabell = array[indexPath.row].title
        navigationController?.pushViewController(vc, animated: true)
    }
}

extension ToDoViewController: UISearchBarDelegate {
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        searchingArray = array.filter { $0.title.lowercased().contains(searchText.lowercased()) }
        searching = !searchText.isEmpty
        tableView.reloadData()
    }
    
    func searchBarSearchButtonClicked(_ searchBar: UISearchBar) {
        searchBar.resignFirstResponder()
    }
}
