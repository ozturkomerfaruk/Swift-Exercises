//
//  ViewController.swift
//  ListApp
//
//  Created by Ömer Faruk Öztürk on 5.09.2022.
//

import UIKit
import CoreData

class ViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    
//    var arrayData = ["Dart", "Flutter", "Swift", "UIKit", "SwiftUI", "NodeJS"]
    var arrayData = [NSManagedObject]()
    
    var ac = UIAlertController()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "List App"
        tableView.delegate = self
        tableView.dataSource = self
        // Do any additional setup after loading the view.
        
       fetch()
        
    }
    
    @IBAction  func didTappedBarTrashButton(_ sender: UIBarItem) {
        presentAlert(title: "Hepsini Silecek",
                     message: "Onaylıyor musunuz?",
                     defaultButtonTitle: "Evet",
                     cancelButtonTitle: "Hayır",
                     isTextAvailable: false,
                     defaultHandler: {
        _ in
            
            let appDelegate = UIApplication.shared.delegate as? AppDelegate
            let managedObjectContex = appDelegate?.persistentContainer.viewContext
            
            for arr in self.arrayData {
                managedObjectContex?.delete(arr)
            }
            
            try? managedObjectContex?.save()
            self.fetch()
        })  
    }
    
    @IBAction func didTappedBarButton(_ sender: UIBarButtonItem) {
        presentAddAlert()
        
    }
    
    func presentAlert(title: String?,
                      message: String?,
                      prefferedStyle: UIAlertController.Style = .alert,
                      defaultButtonTitle: String? = nil,
                      cancelButtonTitle: String?,
                      isTextAvailable: Bool = false,
                      defaultHandler: ((UIAlertAction) -> Void)? = nil) {
        
        ac = UIAlertController(title: title, message: message, preferredStyle: prefferedStyle)
        
        if defaultButtonTitle != nil {
            let defaultButton = UIAlertAction(title: defaultButtonTitle,
                                              style: .default,
                                              handler: defaultHandler)
            ac.addAction(defaultButton)
        }
        
        let cancelButton = UIAlertAction(title: cancelButtonTitle,
                                         style: .cancel)
        
        if isTextAvailable {
            ac.addTextField()
        }
        ac.addAction(cancelButton)
        present(ac, animated: true)
    }
    
    func presentWarningAlert() {
        presentAlert(title: "Uyarı", message: "Liste Elemanı Boş Olamaz!", cancelButtonTitle: "Tamam")
    }
    
    func presentAddAlert() {
        presentAlert(title: "Yeni Eleman Ekle", message: nil,
                     defaultButtonTitle: "Ekle",
                     cancelButtonTitle: "İptal",
                     isTextAvailable: true,
                     defaultHandler: {
            _ in
            let text = self.ac.textFields?.first?.text
            if text != "" {
//                self.arrayData.append(text!)
                let appDelegate = UIApplication.shared.delegate as? AppDelegate
                
                let managedObjectContex = appDelegate?.persistentContainer.viewContext
                
                let entity = NSEntityDescription.entity(forEntityName: "ListItem", in: managedObjectContex!)
                
                let listItem = NSManagedObject(entity: entity!, insertInto: managedObjectContex)
                
                listItem.setValue(text, forKey: "title")
                
                try? managedObjectContex?.save()
                
                self.fetch()
            } else {
                self.presentWarningAlert()
            }
        })
    }
    
    func fetch() {
        let appDelegate = UIApplication.shared.delegate as? AppDelegate
        
        let managedObjectContext = appDelegate?.persistentContainer.viewContext
        
        let fetchRequest = NSFetchRequest<NSManagedObject>(entityName: "ListItem")
        
        arrayData = try! managedObjectContext!.fetch(fetchRequest)
        
        tableView.reloadData()
    }
}

extension ViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrayData.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        let listItem = arrayData[indexPath.row]
        cell.textLabel?.text = listItem.value(forKey: "title") as? String
        return cell
    }
    
    func tableView(_ tableView: UITableView, trailingSwipeActionsConfigurationForRowAt indexPath: IndexPath) -> UISwipeActionsConfiguration? {
        let deleteSwipe = UIContextualAction(style: .normal, title: "Sil") { _, _, _ in
//            self.arrayData.remove(at: indexPath.row)
            
            let appDelegate = UIApplication.shared.delegate as? AppDelegate
            let managedObjectContext = appDelegate?.persistentContainer.viewContext
            
            managedObjectContext?.delete(self.arrayData[indexPath.row])
            
            try? managedObjectContext?.save()
            
            
            self.fetch()
        }
        let editSwipe = UIContextualAction(style: .normal, title: "Düzenle") { _, _, _ in
            self.presentAlert(title: "Eleman Düzenle", message: nil,
                         defaultButtonTitle: "Düzenle",
                         cancelButtonTitle: "İptal",
                         isTextAvailable: true,
                         defaultHandler: {
                _ in
                
                print(self.arrayData[indexPath.row])
                let text = self.ac.textFields?.first?.text
                if text != "" {
//                    self.arrayData[indexPath.row] = text!
                    
                    let appDelegate = UIApplication.shared.delegate as? AppDelegate
                    let managedObjectContext = appDelegate?.persistentContainer.viewContext
                    
                    self.arrayData[indexPath.row].setValue(text, forKey: "title")
                    
                    if managedObjectContext!.hasChanges {
                        try? managedObjectContext?.save()
                    }
                    
                    self.fetch()
                } else {
                    self.presentWarningAlert()
                }
            })
        }
        
        deleteSwipe.backgroundColor = .systemRed
        editSwipe.backgroundColor = .systemGreen
        
        let config = UISwipeActionsConfiguration(actions: [deleteSwipe, editSwipe])
        return config
    }
    
}
