//
//  NewBookTableViewController.swift
//  Favorite Books
//
//  Created by Ferhat Geyik on 9.02.2022.
//

import UIKit

class NewBookTableViewController: UITableViewController {

    
    //MARK: - UI Elements
    @IBOutlet var bookNameTextField: UITextField!
    @IBOutlet var authorTextField: UITextField!
    @IBOutlet var genreTextField: UITextField!
    @IBOutlet var lengthTextField: UITextField!
    
    
    //MARK: - Properties
    var book: Book?
    
    
    
    
    //MARK: - Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let book = book {
            bookNameTextField.text = book.title
            authorTextField.text = book.author
            genreTextField.text = book.genre
            lengthTextField.text = String(book.length)
    }
        
   }
    
    
    //MARK: - Functions
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard segue.identifier == "saveUnwind" else { return }
        
        let title = bookNameTextField.text!
        let author = authorTextField.text!
        let genre = genreTextField.text!
        let length = Int(lengthTextField.text!)!
        
        book = Book(title: title, author: author, genre: genre, length: length)
        
    }
       
    
}
