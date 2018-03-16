//
//  ViewController.swift
//  XCTestTask
//
//  Created by Ibrahim Khan on 3/12/18.
//  Copyright © 2018 Ibrahim Khan. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var table: UITableView!
    
    var items = ["Pancake", "Coffe", "Milk", "Potato", "Chocolate", "Butter", "Steak", "Loaf", "Coriander", "Salmon"]
    var rowNumber = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }

    @IBAction func button(_ sender: Any) {
        rowNumber = 10
        self.table.reloadData()
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return rowNumber
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cellId = "cell"
        let cell = tableView.dequeueReusableCell(withIdentifier: cellId)
        cell?.textLabel?.text = self.items[indexPath.row]
        return cell!
    }
    
}

