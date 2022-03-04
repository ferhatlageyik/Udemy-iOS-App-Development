import UIKit

// http://apple.com
// https://appstore.apple.com/us/app/keynote/id409867?name=12

// Network Request
// 1- Type
// 2- Headers
// 3- Body

// Request Type
// HTTP Method -> GET, POST

// GET -> Sunucudan bilgi almak için kullanılır.
// POST -> Sunucuya bilgi göndermek için kullanılır.

// Headers
// Aslında bir dictionary. (Key, Value)
// Body'de yer alan bilginin hangi formatta olduğunu belirtir. (Örn: JSON, XML)
// Tarayıcınız hakkında bilgiler içerir.

// Body
// Sunucu ve sorgunun oluşturulduğu bilgisayar arasındaki veri alışverisi, body üzerinden sağlanır.
// Body'de yer alan bilginin hangi formatta olduğunu ise Header belirtir.

// Örneğin bir websitesini yüklediğinizde, Header'da veri tipi HTML olacaktır. Body'de ise bir HTML dosyası yer alacaktır.
// Bir iPhone uygulamasının atacağı post request ise Body alanında muhtemeen bir JSON veya XML türünden data içerecektirir.

// NOT: Body'de yer alan bilginin formatı sabit değildir. Sorguya ve sunucuya göre değişkenlik gösterir.

// MARK: - Bir URL Oluşturmak
let url = URL(string: "https://apple.com")!

// MARK: - Network Request'lerin Oluşturulması ve Çalıştırılması

// Data Task ile Request Oluşturmak
let task = URLSession.shared.dataTask(with: url) { (data, reponse, error) in
    if let data = data {
        if let string = String(data: data, encoding: .utf8) {
            //print(string)
        }
    }
}

// Oluşturulan request'in çalıştırılması;
task.resume()

// MARK: - API'lar ile Çalışmak
extension URL {
    
    // Dictionary olarak alınan parametrelerin, URL'in sonuna eklenmesini sağlayacak bir fonksiyon.
    func withQueries(_ queries: [String : String]) -> URL? {
        var components = URLComponents(url: self, resolvingAgainstBaseURL: true)
        components?.queryItems = queries.map { URLQueryItem(name: $0.0, value: $0.1) }
        
        return components?.url
    }
}

let apodUrl = URL(string: "https://api.nasa.gov/planetary/apod?api_key=DEMO_KEY")!

let apiTask = URLSession.shared.dataTask(with: apodUrl) { (data, _, error) in
    if let data = data {
        if let responseString = String(data: data, encoding: .utf8) {
            //print(responseString)
        }
    }
}

apiTask.resume()

// MARK: - Query Kullanımı ile API Sorguları
let baseUrl = URL(string: "https://api.nasa.gov/planetary/apod")!

let query: [String : String] = [
    "api_key": "DEMO_KEY",
    "date": "2011-07-13"
]

let queryUrl = baseUrl.withQueries(query)!

let queryTask = URLSession.shared.dataTask(with: queryUrl) { (data, _, error) in
    if let data = data {
        if let responseString = String(data: data, encoding: .utf8) {
            print(responseString)
        }
    }
}

queryTask.resume()
