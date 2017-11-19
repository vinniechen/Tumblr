//
//  PostCell.swift
//  Tumblr
//
//  Created by Vinnie Chen on 11/17/17.
//  Copyright © 2017 Vinnie Chen. All rights reserved.
//

import UIKit

class PostCell: UITableViewCell {
    
    
    
    @IBOutlet weak var backgroundImage: UIImageView!
    @IBOutlet weak var captionLabel: UILabel!
    @IBOutlet weak var postImage: UIImageView!
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    @IBAction func showButton(_ sender: Any) {
        backgroundImage.isHidden = !backgroundImage.isHidden
        captionLabel.isHidden = !captionLabel.isHidden
    }
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        // Configure the view for the selected state
    }

}
