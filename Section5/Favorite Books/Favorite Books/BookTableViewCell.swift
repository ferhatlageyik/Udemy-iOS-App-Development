//
//  BookTableViewCell.swift
//  Favorite Books
//
//  Created by Ferhat Geyik on 9.02.2022.
//

import UIKit

class BookTableViewCell: UITableViewCell {

    // MARK: - UI Elements
    @IBOutlet var titleLabel: UILabel!
    @IBOutlet var authorLabel: UILabel!
    @IBOutlet var genreLabel: UILabel!
    
    // MARK: Functions
    func update(with book: Book){
        
        titleLabel.text = book.title
        authorLabel.text = book.author
        genreLabel.text = book.genre
    }
    
    

}
