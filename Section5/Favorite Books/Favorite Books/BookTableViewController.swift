//
//  BookTableViewController.swift
//  Favorite Books
//
//  Created by Ferhat Geyik on 8.02.2022.
//

import UIKit

class BookTableViewController: UITableViewController {
    
    
    // MARK: - Properties
    
    var books: [Book] = []
    
    // MARK: - Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()

        if (Book.loadFromFile().count > 0){
            books = Book.loadFromFile()
        } else {
            books = Book.loadSampleBooks()
        }
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toEditBook"{
            
            let selectedIndexPath = tableView.indexPathForSelectedRow!
        
            let selectedBook = books[selectedIndexPath.row]
            let navigationController = segue.destination as? UINavigationController
            
            let editBookController = navigationController?.topViewController as? NewBookTableViewController
            
            editBookController?.book = selectedBook
            
        }
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return books.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let book = books[indexPath.row]
        let cell = tableView.dequeueReusableCell(withIdentifier: "BookCell") as! BookTableViewCell
        cell.update(with: book)
        
        return cell
    }

    // MARK: - Table View Delegate
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let selectedBook = books[indexPath.row]
        
        performSegue(withIdentifier: "toEditBook", sender: nil)
        
        print("\(selectedBook.title) \(indexPath)")
    }
    override func tableView(_ tableView: UITableView, moveRowAt sourceIndexPath: IndexPath, to destinationIndexPath: IndexPath) {
        
        let movedBook = books.remove(at: sourceIndexPath.row)
        books.insert(movedBook, at: destinationIndexPath.row)
        Book.saveToFile(books: books)
        tableView.reloadData()
    }
    
    override func tableView(_ tableView: UITableView, editingStyleForRowAt indexPath: IndexPath) -> UITableViewCell.EditingStyle {
        return .delete
    }
    
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            books.remove(at: indexPath.row)
            Book.saveToFile(books: books)
            
            tableView.deleteRows(at: [indexPath], with: .automatic)
        }
    }
    
    
    // MARK: - Actions
    
    @IBAction func editButtonTapped(_ button: UIBarButtonItem){
        
        let tableViewEditingMode = tableView.isEditing
        print(Book.ArchieveUrl)
        
        tableView.setEditing(!tableViewEditingMode, animated: true)
    }
    
    
    @IBAction func unwindFromNewBook(_ segue: UIStoryboardSegue){
        guard segue.identifier == "saveUnwind",
              let sourceViewController = segue.source as? NewBookTableViewController,
              let newBook = sourceViewController.book else { return }
        
        
        if let selectedIndexPath = tableView.indexPathForSelectedRow {
         
            books[selectedIndexPath.row] = newBook
            tableView.reloadRows(at: [selectedIndexPath], with: .none)
            Book.saveToFile(books: books)
            
        }else {
            
            let newIndexPath = IndexPath(row: books.count, section: 0)
            
            books.append(newBook)
            Book.saveToFile(books: books)
            
            tableView.insertRows(at: [newIndexPath], with: .automatic)
        }
        
    
    }

}
