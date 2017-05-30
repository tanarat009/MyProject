//
//  FileTableViewCell.swift
//  MyFinsProject
//
//  Created by tanarat wuttipornpong on 29/5/60.
//  Copyright © พ.ศ. 2560 tanarat wuttipornpong. All rights reserved.
//

import UIKit

class FileTableViewCell: UITableViewCell {

    @IBOutlet weak var icon: UIImageView!
    
    @IBOutlet weak var tit: UILabel!
    
    @IBOutlet weak var tit2: UILabel!
    
    @IBOutlet weak var tit3: UILabel!
    
    
    
    
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
