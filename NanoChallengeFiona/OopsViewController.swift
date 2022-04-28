//
//  OopsViewController.swift
//  NanoChallengeFiona
//
//  Created by Fiona Valencia on 27/04/22.
//

import UIKit

struct pickChocolate
{
    var name: String
    var image: String
}


class OopsViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return chocolate_array.count
    }
    
    
    var chocolate_array = [pickChocolate]()
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "chocolateChoice", for: indexPath) as! OOPSTableViewCell
        cell.imageColor.image = UIImage(named: chocolate_array[indexPath.row].image)
        cell.name.text = chocolate_array[indexPath.row].name
        
        return cell
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        chocolate_array.append(pickChocolate(name: "CHOCO WAFER",image: "color1"))
        chocolate_array.append(pickChocolate(name: "MILK CHOCOLATE",image: "color2"))
        chocolate_array.append(pickChocolate(name: "CHOCO SPREAD",image: "color3"))
        chocolate_array.append(pickChocolate(name: "CHOCO DRINK",image: "color4"))
        chocolate_array.append(pickChocolate(name: "SNACK & DESSERT",image: "color5"))
        chocolate_array.append(pickChocolate(name: "DARK CHOCOLATE",image: "color06"))
        
    }
}
