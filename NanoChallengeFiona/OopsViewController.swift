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
    
    var index = 0
    
    let datePicker = UIDatePicker()
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return chocolate_array.count
    }
    
    
    var chocolate_array = [pickChocolate]()
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "chocolateChoice", for: indexPath) as! OOPSTableViewCell
        cell.imageColor.image = UIImage(named: chocolate_array[indexPath.row].image)
        cell.choconame.text = chocolate_array[indexPath.row].name
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        index = indexPath.row
    }
    
    @IBOutlet weak var saveBtn: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        saveBtn.addTarget(self, action: #selector(tapOnButton), for: .touchUpInside)
        
        
        
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
    
    @objc func tapOnButton(){
        let story = UIStoryboard(name: "Main", bundle: nil)
        let controller = story.instantiateViewController(withIdentifier: "RegretsViewController") as! RegretsViewController
//        controller.modalPresentationStyle = .fullScreen
//        self.present(controller, animated: true, completion: nil)
        
        regret_chocolate.append(chocolates(name: chocolate_array[index].name, date: eatingDate.text!, image: chocolate_array[index].image))
        self.navigationController?.popViewController(animated: true)
    }
}


