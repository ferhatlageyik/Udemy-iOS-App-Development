import UIKit

extension URL {
    
    // Dictionary olarak alınan parametrelerin, URL'in sonuna eklenmesini sağlayacak bir fonksiyon.
    func withQueries(_ queries: [String : String]) -> URL? {
        var components = URLComponents(url: self, resolvingAgainstBaseURL: true)
        components?.queryItems = queries.map { URLQueryItem(name: $0.0, value: $0.1) }
        
        return components?.url
    }
}

// JSON Temelleri
// Basit bir JSON Örneği:
/*
 {
 "name": "Emirhan",
 "favorite_movie": {
 "title": "Minions",
 "release_year": "2017"
 }
 }
 */

// JSON ve Swift Benzerlikleri

// { } -> Dictionary (Key: Value)
// [ ] -> Array
// " " -> String
// Sayılar ve Bool değerler, " " ile belirtilmez. Örn: 12, true

// JSON Array'leri

/*
 {
 "movies": [
 {
 "title": "Finding Dory",
 "release_year": "2016"
 },
 {
 "title": "Inside Out",
 "release_year": "2015"
 }
 ]
 }
 */

// JSON -> [String : Any]

// MARK: - JSON'dan Swift Veri Modellerine Dönüşüm
let baseUrl = URL(string: "https://api.nasa.gov/planetary/apod")!

let query: [String : String] = [
    "api_key": "DEMO_KEY",
    "date": "2011-07-13"
]

let queryUrl = baseUrl.withQueries(query)!

let queryTask = URLSession.shared.dataTask(with: queryUrl) { (data, _, error) in
    let jsonDecoder = JSONDecoder()
    
    if let data = data {
        if let responseDictionary = try? jsonDecoder.decode([String : String].self, from: data) {
            //print(responseDictionary)
        }
    }
}

queryTask.resume()

// MARK: - JSON'dan Özel Veri Tiplerine Dönüşüm

// API'dan Gelen Data'nın JSON Formatı

/*
 "date": "2017-03-21",
 "explanation": "Açıklama metni",
 "hdurl": "Yüksek çözünürlükte olan görselin URL'i",
 "media_type": "image",
 "service_version": "API'ın versiyonu. (Örn: v1)",
 "title": "Başlık",
 "url": "Görselin standart URL'i."
 */

struct PhotoInfo: Codable {
    var title: String
    var description: String
    var url: URL
    var copyright: String?
    
    // Eğer tanımlamış olduğunuz değişkenlerin isimleri, JSON'daki key'lerden farklı ise
    // o zaman CodingKeys enum'ını tanımlayarak her bir değişkeninizin JSON karşılıpındaki adını belirtmeniz gerekir.
    enum CodingKeys: String, CodingKey {
        case title = "title"
        case description = "explanation"
        case url = "url"
        case copyright = "copyright"
    }
}

let jsonQueryTask = URLSession.shared.dataTask(with: queryUrl) { (data, _, error) in
    let jsonDecoder = JSONDecoder()
    
    if let data = data {
        do {
            let photoInfoObject = try jsonDecoder.decode(PhotoInfo.self, from: data)
            let title = photoInfoObject.url
            
            //print(title)
        }catch {
            //print(error)
        }
    }
}

jsonQueryTask.resume()

// Network kodlarının bir fonksiyona taşınması.
// COmpletion Handler

func fetchPhotoInfo(completion: @escaping (PhotoInfo) -> Void) {
    let baseUrl = URL(string: "https://api.nasa.gov/planetary/apod")!
    let query: [String : String] = [
        "api_key": "DEMO_KEY",
        "date": "2011-07-13"
    ]
    let queryUrl = baseUrl.withQueries(query)!
    
    let dataTask = URLSession.shared.dataTask(with: queryUrl) { (data, _, error) in
        let jsonDecoder = JSONDecoder()
        
        if let data = data {
            if let photoInfoObject = try? jsonDecoder.decode(PhotoInfo.self, from: data) {
                print(photoInfoObject)
                completion(photoInfoObject)
            }
        }
    }
    
    dataTask.resume()
}

// Completion handler'a sahip bir fonksiyonun kullanımı:
fetchPhotoInfo { (photoInfo) in
    // T zamanında çalışacak bir kod bloğu...
    print(photoInfo)
}

// fetchPhotoInfo fonksiyonunu, başka bir Class içerisine almak...
class NetworkController {
    
    func fetchPhotoInfo(completion: @escaping (PhotoInfo?) -> Void) {
        let baseUrl = URL(string: "https://api.nasa.gov/planetary/apod")!
        let query: [String : String] = [
            "api_key": "DEMO_KEY",
            "date": "2011-07-13"
        ]
        
        let queryUrl = baseUrl.withQueries(query)!
        
        let dataTask = URLSession.shared.dataTask(with: queryUrl) { (data, _, error) in
            let jsonDecoder = JSONDecoder()
            
            if let data = data, let photoInfoObject = try? jsonDecoder.decode(PhotoInfo.self, from: data) {
                completion(photoInfoObject)
            }else {
                completion(nil)
            }
        }
        
        dataTask.resume()
    }
}

// NetworkController objesini kullanarak içerisindeki fotoğraf değerini aşağıdaki kodlar ile çekip konsola yazdırabiliyoruz.
let networkController = NetworkController()
networkController.fetchPhotoInfo { photoInfo in
    print(photoInfo)
}
