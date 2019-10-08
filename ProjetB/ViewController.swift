//
//  ViewController.swift
//  ProjetB
//
//  Created by Luc Derosne on 08/10/2019.
//  Copyright © 2019 Luc Derosne. All rights reserved.
//
import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var pseudo_ui: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.getUserdef()
        
    }
    
    private func getUserdef()
    {
        let shared = UserDefaults(suiteName: "group.com.ac10qt.tipios04")
        let valueForKey = shared?.object(forKey: "pseudo")
        guard let myPseudo: String = valueForKey as? String else { return }
        pseudo_ui.text = myPseudo
        
        print("Pseudo :  ", valueForKey ?? "")
    }

}
