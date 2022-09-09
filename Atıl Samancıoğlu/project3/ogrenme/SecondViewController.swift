//
//  SecondViewController.swift
//  ogrenme
//
//  Created by Ömer Faruk Öztürk on 9.09.2022.
//

import UIKit

class SecondViewController: UIViewController {
    
    @IBOutlet weak var label: UILabel!
    
    var gelenMetin = "asd"

    override func viewDidLoad() {
        super.viewDidLoad()
        
        label.text = gelenMetin
        
    }
    

   

}
