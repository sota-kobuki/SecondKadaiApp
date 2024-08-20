//
//  ViewController.swift
//  SecondKadaiApp
//
//  Created by 小吹　創大 on 2024/08/20.
//

import UIKit

class ViewController: UIViewController{
    
    @IBOutlet weak var textField: UITextField!
    var name:String?
    
    @IBAction func go(_ sender: Any) {
        name = textField.text
        performSegue(withIdentifier: "goToResult", sender: self)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToResult" {
            let resultViewController = segue.destination as! ResultViewController
            resultViewController.name = name
        }
    }
    
    @IBAction func unwind(_ segue: UIStoryboardSegue) {
        }
}

