//
//  ViewController.swift
//  LandmarkBook
//
//  Created by Orhan Erbas on 6.07.2020.
//  Copyright © 2020 Orhan Erbas. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    @IBOutlet weak var tableView: UITableView!
    var names = [String]()
    var images = [UIImage]()
    var selectedName = ""
    var selectedImage = UIImage()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
        
        names.append("Ironman")
        names.append("Ironman 2")
     
        images.append(UIImage(named: "ironman")!)
        images.append(UIImage(named: "ironman2")!)
        
        navigationItem.title = "Landmark Book"
        
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            names.remove(at: indexPath.row)
            images.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: UITableView.RowAnimation.fade)
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel?.text = names[indexPath.row]
        return cell
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return names.count
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        selectedName = names[indexPath.row]
        selectedImage = images[indexPath.row]
        
        performSegue(withIdentifier: "secondViewController", sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "secondViewController" {
            let destinationVC = segue.destination as! secondViewController
            
            destinationVC.selectedLabel = selectedName
            destinationVC.selectedImage = selectedImage
        }
    }

}

