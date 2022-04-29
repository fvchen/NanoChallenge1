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


class OopsViewController: UIViewController, UITableViewDataSource, UITableViewDelegate, UIPickerViewDelegate {

    @IBOutlet weak var eatingDate: UITextField!
    @IBOutlet weak var saveBtn: UIButton!
    
    let datePicker = UIDatePicker()
    
    
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
        
createDatePicker()
        
        chocolate_array.append(pickChocolate(name: "CHOCO WAFER",image: "color1"))
        chocolate_array.append(pickChocolate(name: "MILK CHOCOLATE",image: "color2"))
        chocolate_array.append(pickChocolate(name: "CHOCO SPREAD",image: "color3"))
        chocolate_array.append(pickChocolate(name: "CHOCO DRINK",image: "color4"))
        chocolate_array.append(pickChocolate(name: "SNACK & DESSERT",image: "color5"))
        chocolate_array.append(pickChocolate(name: "DARK CHOCOLATE",image: "color06"))
        
    }
    
    func createDatePicker() {
        let toolbar = UIToolbar()
        toolbar.sizeToFit()
        
        let doneBtn = UIBarButtonItem(barButtonSystemItem: .done, target: nil, action: #selector(donePress))
        toolbar.setItems([doneBtn], animated: true)
        
        eatingDate.inputAccessoryView = toolbar
        
        eatingDate.inputView = datePicker
        
        datePicker.datePickerMode = .date
    }
    @objc func donePress() {
        
        let formatter = DateFormatter()
        formatter.dateStyle = .medium
        formatter.timeStyle = .none
        
        
        eatingDate.text = formatter.string(from: datePicker.date)
        self.view.endEditing(true)
    }
}
