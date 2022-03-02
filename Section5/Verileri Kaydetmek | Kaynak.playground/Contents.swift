import UIKit

// Codable protokolü, hem Encodable hem de Decodable anlamına gelir.

// NOT: Codable protokolünü destekleyen modelinizde bulunan tüm
// değişken veri tiplerinizin de Codable protokolünü desteklemesi gerekir.
struct Note: Codable {
    var title: String
    var text: String
    var timestamp: Date // Notun ne zaman oluşturulduğu bilgisi.
}

// Bir 'Note' nesnesi oluşturmak.
// Date() -> O an
let newNote = Note(title: "Alışverişte Alınacaklar Listesi", text: "Yoğurt, çay ve süt almayı unutma.", timestamp: Date())

// MARK: - ENCODING
// Bir 'Note' nesnesinin, 'plist' (propertyList) formatına encode edilmesi
// Elinizdeki bir nesneyi, hafızaya keydetmek istiyorsanız onu Data formuna encode etmek zorundsınız.
// Encode dosya formatlarına örnek: JSON, Plist, MP3, MP4...

// PropertyListEncoder, Encodable protokolünü destekleyen herhangi bir nesneyi Data formuna encode eder.
let propertyListEncoder = PropertyListEncoder()

// Bu fonksiyon bir 'throwingFunction'. Dolayısyla çalışma esnasında Error fırlatabilir.
// Bu tür fonksiyonlar do catch bloüu içerisinde try kelimesi ile kullanılmalıdır.

// Yöntem 1: Fonksiyon çalıştığı esnada karşılaşılan hataları yakalamk isterseniz...
do {
    let encodedNote = try propertyListEncoder.encode(newNote)
    
}catch {
    // Size error adında bir değişken verir.
    // Bu error, do bloğu içerisinde çalışan kodlarda meydana gelen hataları belirtir.
    print(error)
}

// Yöntem 2: Hatanın bir önem yok, yalnızca nil olmadığı durumu arıyorsanız...
if let encodedNote = try? propertyListEncoder.encode(newNote) {
    print("ENCODING")
    print(encodedNote)
}


// MARK: - DECODING
if let encodedNote = try? propertyListEncoder.encode(newNote) {
    let propertyListDecoder = PropertyListDecoder()
    
    // type: Hangi tür modele decode edilmesini istiyorsunuz?
    // from: Hangi datayı kullanarak bu işlem yapılacak?
    if let decodedNote = try? propertyListDecoder.decode(Note.self, from: encodedNote) {
        print("DECODING")
        print(decodedNote)
    }
}


// MARK: - VERİYİ KAYDETMEK

// Her uygulamanınn kendi Documents Directory'si vardır.
// Uygulamalar, yalnızca kendi klasörlerine veri yazabilir veya okuyabilir.
// Uygulamanın dılında bir veriye ulaşmak istendiğinde bu durum mutlaka kullanıcıya bir alert ile bildirilir.

// Bir projenin birden fazla document directory'si olabilir. Fakat varsayılan olarak yalnızca 1 tane oluşturulur.
// Bu nedenle 'documentDirectory' bir array'dir ve biz ilk elemanına erişmek isteriz. (.first)
let documentDirectory = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask).first!

// 'documentDirectory' size bir klasör verir.
// Bu klasör içerisinde yeni bir dosya uzantısı oluşturmanız gerekiyor.

// .../Documents/notes.plist
let singleNoteURL = documentDirectory.appendingPathComponent("singleNote").appendingPathExtension("plist")


// MARK: - ENCODE EDİLMİŞ DATA'NIN FILEMANAGER ile OLUŞTURULMUŞ URL'e KAYDEDİLMESİ
if let encodedNote = try? propertyListEncoder.encode(newNote) {
    // Data'nın, belirtilen bir URL'e yazılmasını sağlar.
    // noFileProtection: Var olan dosyanın üzerine yazılmasını engellemez.
    print("WRITING FILE")
    try? encodedNote.write(to: singleNoteURL, options: .noFileProtection)
}

// MARK: - VERİYİ OKUMAK

// Data'nın özel bir init'i vardır.
// Data(contentsOf: ) -> parametre olarak vereceğiniz URL'de bulunan datayı kullanarak initialize edilmesini sağlar.
let propertyListDecoder = PropertyListDecoder()

// Adım 1: Dosyayı Data formatında okumak.
if let retrievedNoteData = try? Data(contentsOf: singleNoteURL) {
    // Adım 2: propertyListDecoder kullanarak Data'dan Note objesi oluşturmak.
    if let decodedNote = try? propertyListDecoder.decode(Note.self, from: retrievedNoteData) {
        print("RETRIEVING NOTE FILE")
        print(decodedNote)
    }
}

// MARK: - ARRAY TÜRÜNDEN VERİ KAYDETMEK
let note1 = Note(title: "Bahçe İşleri", text: "Çiçekleri sulamayı unutma!", timestamp: Date())
let note2 = Note(title: "Ventence", text: "Yeni haberler yayına girecek.", timestamp: Date())
let notes = [note1, note2]

let notesURL = documentDirectory.appendingPathComponent("notes").appendingPathExtension("plist")

if let encodedNotes = try? propertyListEncoder.encode(notes) {
    try? encodedNotes.write(to: notesURL, options: .noFileProtection)
}

// MARK: - ARRAY TÜRÜNDEN VERİ OKUMAK
if let notesData = try? Data(contentsOf: notesURL) {
    if let decodedNotes = try? propertyListDecoder.decode([Note].self, from: notesData) {
        print("RETREIVING NOTES")
        for note in decodedNotes {
            print(note)
        }
    }
}
