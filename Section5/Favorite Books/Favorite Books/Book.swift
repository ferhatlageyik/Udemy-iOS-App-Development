//
//  Book.swift
//  Favorite Books
//
//  Created by Ferhat Geyik on 8.02.2022.
//

import Foundation


struct Book: Codable{
    
    static let documentsDirectory = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask).first!
    
    static let ArchieveUrl = documentsDirectory.appendingPathComponent("books").appendingPathExtension("plist")
    
    
    var title: String
    var author: String
    var genre: String
    var length: Int
    
    init(title: String, author: String, genre: String, length: Int){
        self.title = title
        self.author = author
        self.genre = genre
        self.length = length
    }
    
    
    //MARK: - Functions
    
    static func saveToFile(books: [Book]){
        print(ArchieveUrl)
        let propertyListEncoder = PropertyListEncoder()
        if let encodedBooks = try? propertyListEncoder.encode(books){
        try? encodedBooks.write(to: ArchieveUrl, options: .noFileProtection)
        }
        
    }
    
    static func loadFromFile() ->[Book] {
        let propertyListDecoder = PropertyListDecoder()
        if let retrievedBooksData = try? Data(contentsOf: ArchieveUrl), let decodedBooks = try?
            propertyListDecoder.decode(Array<Book>.self, from: retrievedBooksData){
            return decodedBooks
        } else {
         return []
        }
      }
    
    static func loadSampleBooks() ->[Book]{
        
        let books: [Book] = [
              Book(title: "Martin Eden", author: "Jack London", genre: "Klasik", length: 500),
              Book(title: "Soluk Mavi Nokta", author: "Carl Sagan", genre: "Bilim", length: 450),
              Book(title: "Kürk Mantolu Madonna", author: "Sebahattin Ali", genre: "Roman", length: 300),
              Book(title: "Homo Saphiens", author: "Yuval Noah Harrari", genre: "Bilim", length: 600),
              Book(title: "Suç ve Ceza", author: "Dostoyevski", genre: "Roman", length: 550),
              Book(title: "1984", author: "George Orwell", genre: "Roman", length: 450),
              Book(title: "Masumiyet Müzesi", author: "Orhan Pamuk", genre: "Roman", length: 480),
              Book(title: "Ölü Canlar", author: "Gogol", genre: "Klasik", length: 650),
              Book(title: "Çocukluğum", author: "Maksim Gorki", genre: "Klasik", length: 250),
              Book(title: "Narsist ve Goldmund", author: "Hermann Hesse", genre: "Psikolojik Roman", length: 300),
              Book(title: "Akıl Çağı", author: "Jean Paul Sartre", genre: "Psikolojik Roman", length: 469),
              Book(title: "Yaşanmayan Zaman", author: "Jean Paul Sartre", genre: "Psikolojik Roman", length: 590),
              Book(title: "Yıkılış", author: "Jean Paul Sartre", genre: "Psikolojik Roman", length: 558),
              Book(title: "Nietzsche Ağladığında", author: "Irvin D. Yalom", genre: "Psikolojik Roman", length: 489),
              Book(title: "İçimizdeki Şeytan", author: "Sebahattin Ali", genre: "Roman", length: 360),
              Book(title: "Yabancı", author: "Albert Camnus", genre: "Roman", length: 170),
              Book(title: "Dönüşüm", author: "Franz Kafka", genre: "Roman", length: 130),
              Book(title: "Kuyucaklı Yusuf", author: "Sebahattin Ali", genre: "Roman", length: 290),
              Book(title: "Dövüş Kulübü", author: "Chuck Palanhiuk", genre: "Fantastik Roman", length: 145)
              
        ]
        return books
        }
    }
