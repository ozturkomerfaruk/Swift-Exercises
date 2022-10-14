//
//  SonucEkraniViewController.swift
//  BayrakUygulamasi
//
//  Created by Kasım Adalan on 30.07.2019.
//  Copyright © 2019 info. All rights reserved.
//

import UIKit

class SonucEkraniViewController: UIViewController {

    @IBOutlet weak var labelSonuc: UILabel!
    
    @IBOutlet weak var labelYuzde: UILabel!
    
    var dogruSayisi:Int?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationItem.hidesBackButton = true
        
        if let d = dogruSayisi {
            labelSonuc.text = "\(d) DOĞRU \(5-d) YANLIŞ"
            labelYuzde.text = "% \(d*100/5) Başarı"
        }

    }
    
    @IBAction func tekrarDene(_ sender: Any) {
        
        navigationController?.popToRootViewController(animated: true)
        
        
    }
    
}
