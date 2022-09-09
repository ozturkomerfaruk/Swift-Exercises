//
//  ViewController.swift
//  ogrenme
//
//  Created by Ömer Faruk Öztürk on 8.09.2022.
//

import UIKit

class ViewController: UIViewController {
    
    var omer = "Ömer Faruk Öztürk"
    
    @IBOutlet weak var textField: UITextField!
    
    var gidecekMetin = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let width = view.frame.size.width
        let height = view.frame.size.height
        
        
        let label = UILabel()
        label.text = omer
        label.textAlignment = .center
        label.frame = CGRect(x: width * 0.5  - width/2,
                             y: height * 0.5 - 30,
                             width: width,
                             height: 60)
        view.addSubview(label)
        
        let button = UIButton()
        button.setTitle("Button", for: .normal)
        button.setTitleColor(.red, for: .normal)
        button.frame = CGRect(x: width * 0.5 - 50, y: height * 0.5, width: 100, height: 100)
        view.addSubview(button)
        
        button.addTarget(self, action: #selector(buttonAction), for: .touchUpInside)
        
    }
    
    @objc func buttonAction() {
        omer = "İstanbul"
        print(omer)
    }
    
    
    @IBAction func kaydet(_ sender: UIButton) {
        gidecekMetin = textField.text!
        performSegue(withIdentifier: "toSecondVC", sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toSecondVC" {
            let destinationVC = segue.destination as! SecondViewController
            destinationVC.gelenMetin = gidecekMetin
        }
    }
    
    override func viewWillAppear(_ animated: Bool) {
        textField.text = ""
    }
}




/*
 View did load --> ilk çalıştığında bir kez çağrılıyor sonra bir daha çağrılmıyor
 
 View will appear --> Her açıldığında çağrılıyor
 
 View did appear --> sayfa yüklendikten sonra çağrılıyor ve sayfa açıldığında gerçekleşiyor
 */
