//
//  OOPSTableViewCell.swift
//  NanoChallengeFiona
//
//  Created by Fiona Valencia on 28/04/22.
//

import UIKit

class OOPSTableViewCell: UITableViewCell {
    
    @IBOutlet var imageColor : UIImageView!
    @IBOutlet var choconame : UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
