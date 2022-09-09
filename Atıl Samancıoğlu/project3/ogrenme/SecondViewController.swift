//
//  SecondViewController.swift
//  ogrenme
//
//  Created by Ömer Faruk Öztürk on 9.09.2022.
//

import UIKit

class SecondViewController: UIViewController {
    
    @IBOutlet weak var label: UILabel!
    
    @IBOutlet weak var imageLabel: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        label.text = gelenMetin
        
        
        imageView.isUserInteractionEnabled = true
        let gestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(gorselDegistir))
        imageView.addGestureRecognizer(gestureRecognizer)
    }
    
    var gelenMetin = "asd"
    var isTrue = false
    @objc func gorselDegistir() {
        isTrue = !isTrue
        
        imageView.image = isTrue ? UIImage(named: "profil") : UIImage(named: "cv")
        imageLabel.text = isTrue ? "profil" : "cv"
    }
    
    
    var timer = Timer()
    
    @IBOutlet weak var timerLabel: UILabel!
    var geriSayim: Int = 5
    
    @IBAction func timerAction(_ sender: UIButton) {
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(timerFonksiyonu), userInfo: nil, repeats: true)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        timerLabel.text = String(geriSayim)
    }
    
    @objc func timerFonksiyonu() {
        geriSayim = geriSayim - 1
        timerLabel.text = "\(geriSayim)"
        
        
        if geriSayim == 0 {
            timer.invalidate()
        }
    }
}
