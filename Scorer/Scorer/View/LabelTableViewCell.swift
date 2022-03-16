//
//  LabelTableViewCell.swift
//  Scorer
//
//  Created by Ashok Murugavel on 15/03/22.
//

import UIKit

class LabelTableViewCell: UITableViewCell {
    
    @IBOutlet weak var LabelOut: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        self.LabelOut.textAlignment = .center
        self.LabelOut.textColor = .red
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
