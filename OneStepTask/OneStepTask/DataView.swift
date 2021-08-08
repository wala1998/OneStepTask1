//
//  DataView.swift
//  OneStepTask
//
//  Created by wala janajreh on 03/08/2021.
//

import UIKit

class DataView: UIView {

    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var titleLabel: UILabel!
    
    func reg(){
        tableView.register(UINib(nibName: "CustomTableViewCell", bundle: nil), forCellReuseIdentifier: "cell")
        tableView.register(UINib(nibName: "SecondCustomTableViewCell", bundle: nil), forCellReuseIdentifier: "SecondTableViewCell")
    }
}

extension DataView : UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        reg()
        return 4
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.row == 0 {
            let cell = tableView.dequeueReusableCell(withIdentifier: "SecondTableViewCell", for: indexPath) as! SecondCustomTableViewCell
            cell.titleLabel.text = "Your Physical therapist is waiting to meet you."
            cell.paragraphLabel.text = "You set the goal, we help you get there. Take the next step in your journey by scheduling your physical therapy online meeting now."
            return cell
        } else {
            let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! CustomTableViewCell
            cell.titleLabel.text = "Set your goals"
            return cell
        }
    }
    
}
