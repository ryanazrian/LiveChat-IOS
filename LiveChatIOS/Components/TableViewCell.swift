//
//  TableViewCell.swift
//  LiveChatIOS
//
//  Created by PFY-Ryan ME on 13/05/2024.
//

import UIKit

class TableViewCell: UITableViewCell {
    
    @IBOutlet weak var username: UILabel!
    @IBOutlet weak var email: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
