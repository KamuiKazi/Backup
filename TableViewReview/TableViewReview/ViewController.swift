

import UIKit
import CoreData

class ViewController: UIViewController
{

    @IBOutlet weak var seasonsTableView: UITableView!
    
    let seasons = ["Summer, Fall, Winter, Spring"]

    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        
    
    
    func SeasonsTableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int{
        return 4
    }
    
    
    func SeasonsTableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell{
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.detailTextLabel?.text = seasons[indexPath.row]
        return Cell
    }

}

