//
//  CategoriasPrestadorTableViewCell.swift
//  WorkingZCriarConta
//
//  Created by Icaro Alcantara Laudade on 26/10/17.
//  Copyright © 2017 Student. All rights reserved.
//

import UIKit

class CategoriasPrestadorTableViewCell: UITableViewCell {

    @IBOutlet weak var isInteresse: UISwitch!
    @IBOutlet weak var categoria: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
