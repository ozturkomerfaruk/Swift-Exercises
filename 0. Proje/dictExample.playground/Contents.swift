import Cocoa

var notlar = [[Float]]()
var ortalamalar = [Float]()
var durumlar = [String]()

notlar.append([20, 40, 30])
notlar.append([50,60, 70])

for i in 0..<notlar.count {
    let ortalama = notlar[i].reduce(0){
        $0 + $1 / Float(notlar[i].count)
    }
    print(ortalama)
    ortalamalar.append(ortalama)
}

durumlar = ortalamalar.map({
    if $0 < 50 {
        return "Kaldın"
    } else {
        return "Geçtin"
    }
})
print("Ortalamalar: \(ortalamalar)")
print("Durumlar: \(durumlar)")

var ogrenciler = [String:String]()

for i in 0..<durumlar.count {
    ogrenciler["\(ortalamalar[i])"] = "\(durumlar[i])"
}

for (ort, durum) in ogrenciler {
    print(ort + "->" + durum)
}
