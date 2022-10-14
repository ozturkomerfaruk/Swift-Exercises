//
//  ViewController.swift
//  BayrakUygulamasi
//
//  Created by Kasım Adalan on 30.07.2019.
//  Copyright © 2019 info. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        veritabaniKopyala()
    }
    
    func veritabaniKopyala(){
        
        let bundleYolu = Bundle.main.path(forResource: "bayrakquiz", ofType: ".sqlite")
        
        let hedefYol = NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true).first!
        
        let fileManager = FileManager.default
        
        let kopyalanacakYer = URL(fileURLWithPath: hedefYol).appendingPathComponent("bayrakquiz.sqlite")
        
        if fileManager.fileExists(atPath: kopyalanacakYer.path) {
            print("Veritabanı zaten var.Kopyalamaya gerek yok")
        }else{
            do {
                
                try fileManager.copyItem(atPath: bundleYolu!, toPath: kopyalanacakYer.path)
                
            }catch{
                print(error)
            }
        }
    }


}

