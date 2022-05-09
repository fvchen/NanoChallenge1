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

var regret_chocolate = [chocolates]()

class RegretsViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
   
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return regret_chocolate.count
    }
    
   
    
    
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "chocolate_cell", for: indexPath) as! TableViewCell
        cell.imageColor.image = UIImage(named: regret_chocolate[indexPath.row].image)
        cell.name.text = regret_chocolate[indexPath.row].name
        cell.date.text = regret_chocolate[indexPath.row].date
        
        return cell
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print(regret_chocolate.count)
        // Do any additional setup after loading the view.
    }

}
