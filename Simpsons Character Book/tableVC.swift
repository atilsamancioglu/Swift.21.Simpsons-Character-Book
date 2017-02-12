//
//  ViewController.swift
//  Simpsons Character Book
//
//  Created by Atıl Samancıoğlu on 12/02/2017.
//  Copyright © 2017 Atıl Samancıoğlu. All rights reserved.
//

import UIKit

class tableVC: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!
    
    var mySimpsons = [Simpson]()
    var chosenSimpson = Simpson()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //tableView setup
        
        tableView.delegate = self
        tableView.dataSource = self
      
        
        //create our characters
        
        let homer = Simpson()
        homer.name = "Homer Simpson"
        homer.occupation = "Safety Inspector"
        homer.image = UIImage(named: "homer.png")!
        
        let bart = Simpson()
        bart.name = "Bart Simpson"
        bart.occupation = "Student"
        bart.image = UIImage(named: "bart.PNG")!
        
        let marge = Simpson()
        marge.name = "Marge Simpson"
        marge.occupation = "Homermaker"
        marge.image = UIImage(named: "marge.png")!
        
        let ned = Simpson()
        ned.name = "Ned Flanders"
        ned.occupation = "Pharmacist"
        ned.image = UIImage(named: "ned.png")!
        
        mySimpsons.append(homer)
        mySimpsons.append(bart)
        mySimpsons.append(marge)
        mySimpsons.append(ned)
        
    }

    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return mySimpsons.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel?.text = mySimpsons[indexPath.row].name
        return cell
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toDetailsVC" {
            let destinationVC = segue.destination as! detailsVC
            destinationVC.selectedSimpson = self.chosenSimpson
        }
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        self.chosenSimpson = mySimpsons[indexPath.row]
        self.performSegue(withIdentifier: "toDetailsVC", sender: nil)
        
    }
    
    

}

