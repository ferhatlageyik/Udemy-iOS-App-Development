//
//  ViewController.swift
//  ViewController Hayat Dongusu
//
//  Created by Emirhan Erdogan on 14.06.2020.
//  Copyright © 2020 TurkishKit. All rights reserved.
//

import UIKit

class RedViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Her sayfa için yalnızca 1 kez çalışır!
        
        // Sayfanız memory'ye yüklendikten hemen sonra çalışır.
        // Arayüz elemanlarının ve değişkenlerin kullanıma artık hazır olduğunu belirtir.
        
        // Yeni arayüz elemanlarını programmatik olarak oluşturarak
        // view hiyerarşisine ekleyebileceğiniz fonksiyon.
        
        // Arayüz elemanlarının özelliklerini güncellemek için uygun bir fonksiyon.
        print("RedViewController - View Did Load")
    }
    
    override func viewWillAppear(_ animated: Bool) { 
        super.viewWillAppear(animated)
        
        // ViewDidLoad fonksiyonundan hemen sonra çalışan fonksiyon.
        // Sayfa her erkrana gelmek üzere olduğu zaman çalışır.
        
        // Kullanım Örneği:
        // Kullanıcının konumunu güncelleyen bir sayfa ise,
        // her açıldığında kullanıcının o anki konumunu günceller.
        
        print("RedViewController - View Will Appear")
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        // ViewWillAppear'dan hemen sonra çalışan fonksiyondur.
        // Sayfa her ekrana geldikten sonra çalışır.
        
        // Kullanım Örneği:
        // Sayfa ekrana geldikten bir süre sonra ekranda bildirim göstermek isterseniz
        // ViewDidAppear doğru fonksiyondur.
        
        // Animasyon ile çalışıyorsanız animasyonlar bu fonksiyon ile başlatılmalıdır.
        // Uzun bir network request varsa bu fonksiyon sonrasında başlatılır.
        
        print("RedViewController - View Did Appear")
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        
        // Sayfa, ekrandan gitmek üzere olduğu zaman çalışır.
        // Örn: NavigationController'da yeni bir sayfaya push edileceği zaman.
        
        print("RedViewController - View Will Disappear")
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        
        // ViewWillDissapear fonksiyonundan sonra tetiklenir.
        // Bir ViewController'ın hayat döngüsünde çalışan son fonksiyondur.
        // Sayfa, ekrandan tamamen gittiği zaman çalışır.
        
        // Kullanım Örneği:
        // Çalmakta olan bir müziğin veya oynatılmakta olan bir videonun,
        // yeni bir sayfaya geçildikten sonra durdurulması istenirse
        // bu fonksiyon oldukça uygun bir zamandır.
        
        print("RedViewController - View Did Disappear")
    }
}
