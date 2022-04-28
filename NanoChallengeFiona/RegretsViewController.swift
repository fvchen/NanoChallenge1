//
//  RegretsViewController.swift
//  NanoChallengeFiona
//
//  Created by Fiona Valencia on 27/04/22.
//

import UIKit

struct chocolates
{
    var name: String
    var date: String
    var image: String
}

class RegretsViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
   
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return chocolate_array.count
    }
    
   
    
    
    var chocolate_array = [chocolates]()
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "chocolate_cell", for: indexPath) as! TableViewCell
        cell.imageColor.image = UIImage(systemName: chocolate_array[indexPath.row].image)
        cell.name.text = chocolate_array[indexPath.row].name
        cell.date.text = chocolate_array[indexPath.row].date
        
        return cell
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }

}
