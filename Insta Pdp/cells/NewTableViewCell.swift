//
//  NewTableViewCell.swift
//  Insta Pdp
//
//  Created by  Abdurahmon on 16/02/22.
//

import UIKit

class NewTableViewCell: UITableViewCell {

    @IBOutlet weak var user_img: UIImageView!
    @IBOutlet weak var post1_img: UIImageView!
    @IBOutlet weak var post2_img: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
