//
//  ViewControllerSelectProvince.swift
//  ImmiCan
//
//  Created by Shubhdeep on 2023-01-12.
//

import Foundation
import UIKit

class ViewControllerSelectProvince: UIViewController {
    
    @IBOutlet weak var selectedProvince: UIButton!
    @IBAction func selectProvinceButton(_ sender: Any) {
    }
    
    @IBOutlet weak var tblView: UITableView!
    var listOfProvinces: [String] = ["Alberta", "British Columbia","Manitoba", "New Brunswick", "Newfoundland and Labrador", "Nova Scotia", "Ontario", "Prince Edward Island", "Quebec", "Saskatchewan", "Yukon"]
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}
extension ViewControllerSelectProvince: UITableViewDelegate, UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return listOfProvinces.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = listOfProvinces[indexPath.row]
        return cell
    }
}

