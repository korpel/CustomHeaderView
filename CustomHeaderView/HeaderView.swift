//
//  HeaderView.swift
//  CustomHeaderView
//
//  Created by Antonis Vozikis on 19/05/2017.
//  Copyright © 2017 Antonis Vozikis. All rights reserved.
//

import UIKit

class HeaderView: UITableViewCell {

    @IBOutlet weak var headerLabel: UILabel!
    @IBOutlet weak var headerImageView: UIImageView!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
