//
//  EmojiTableViewCell.swift
//  UITableView
//
//  Created by Emirhan Erdogan on 20.06.2020.
//  Copyright © 2020 TurkishKit. All rights reserved.
//

import UIKit

class EmojiTableViewCell: UITableViewCell {

    // MARK: - UI Elements
    @IBOutlet var symbolLabel: UILabel!
    @IBOutlet var nameLabel: UILabel!
    @IBOutlet var descriptionLabel: UILabel!
    
    // MARK: - Functions
    func update(with emoji: Emoji) {
        symbolLabel.text = emoji.symbol
        nameLabel.text = emoji.name
        descriptionLabel.text = emoji.description
    }
}
