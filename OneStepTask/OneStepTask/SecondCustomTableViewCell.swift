//
//  SecondCustomTableViewCell.swift
//  OneStepTask
//
//  Created by wala janajreh on 07/08/2021.
//

import UIKit

class SecondCustomTableViewCell: UITableViewCell {
    @IBOutlet weak var imgView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var paragraphLabel: UILabel!
    @IBOutlet weak var button: UIButton!
    @IBOutlet weak var containerView: UIView! {
        didSet {
            contentView.layer.shadowOffset = CGSize(width: 3, height: 3)
            contentView.layer.shadowOpacity = 1
            contentView.layer.shadowRadius = 0.1
        }
    }
    override func awakeFromNib() {
        super.awakeFromNib()
        button.layer.cornerRadius = 25
        self.containerView.layer.borderWidth = 0.1
        self.containerView.layer.masksToBounds = true
        self.containerView.layer.cornerRadius = 5
 
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
}
