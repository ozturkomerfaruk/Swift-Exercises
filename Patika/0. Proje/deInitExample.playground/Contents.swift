import Cocoa

class Araba {
    var tipi: String?
    var rengi: String?
    var vites: String?
    
    init(tipi: String, rengi: String, vites: String) {
        self.tipi = tipi
        self.rengi = rengi
        self.vites = vites
    }
    
    deinit {
        print("deInit çalıştı")
    }
}

var otomobil: Araba? = Araba(tipi: "Mercedes", rengi: "Siyah", vites: "8 vites")

var araba1: Araba? = otomobil
var araba2: Araba? = otomobil
var araba3: Araba? = otomobil
var araba4: Araba? = otomobil

otomobil = nil
araba1 = nil
araba2 = nil
araba3 = nil
araba4 = nil
