//
//  Abi_ContentFormsViewCell.swift
//  ABI_App
//
//  Created by Macky on 19/11/2019.
//  Copyright © 2019 juan. All rights reserved.
//

import UIKit

class Abi_ContentFormsViewCell: UITableViewCell {

    @IBOutlet var PatientName_tf: UILabel!
    @IBOutlet var Hospital_tf: UILabel!
    @IBOutlet var Date_tf: UILabel!
    @IBOutlet var cellView_view: UIView!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
