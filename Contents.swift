import UIKit

var greeting = "Hello, playground"

//carクラスを作成する
class car {
    //プロパティを作成
    
    var name: String
    var maker: String
    var price: Int
    
    //プロパティを初期化
    init(name: String, maker: String, price: Int) {
        self.name = name
        self.maker = maker
        self.price = price
    }
    
    //メソッドを作成
    func show_car() -> String {
        //引数のある関数なのでreturnを使用する
        return "この車は\(self.name)です。メーカーは\(self.maker)で、値段は\(self.price)円です。"
        
    }
}

//インスタンス”プリウス”を作成
var car1 = car(name: "プリウス", maker: "トヨタ", price: 2000000)
print(car1.show_car())

//インスタンス"ビートル"を作成
var car2 = car(name: "ビートル", maker: "フォルクスワーゲン", price: 3000000)
print(car2.show_car())


//carクラスを継承した子クラスを作成する
class sub_car: car {
    //プロパティ"Color"を作成
    var Color: String

    //プロパティの初期化
    init(name: String, maker: String, price: Int, Color: String) {
        self.Color = Color
        //親クラスのプロパティを初期化
        super.init(name: name, maker: maker, price: price)
    }
    //メソッドを継承
    override func show_car() -> String {
        return "この車は\(self.name)です。メーカーは\(self.maker)で、色は\(self.Color)色です。値段は\(self.price)円です。"
    }
    
}
//インスタンスを作成
var car3 = sub_car(name: "GT-R", maker: "日産", price: 10000000, Color: "黒")
print(car3.show_car())


//キャラクタークラスを作成する
class character {
    var name: String
    var buki: String
    var level: Int
    
    init(name: String, buki: String, level: Int){
        self.name = name
        self.buki = buki
        self.level = level
    }
    
    func introduction() -> String {
        return "私の名前は\(self.name)です。レベルは\(self.level)で、武器は\(self.buki)です"
    }
}
//インスタンスを作成する
var chara = character(name: "勇者", buki: "石の剣", level: 10)
print(chara.introduction())

//characterクラスの子クラスを作成する
class skill: character {
    var waza: String
    
    init(name: String, buki: String, level: Int, waza: String) {
        self.waza = waza
        
        super.init(name: name, buki: buki, level: level)
    }
    override func introduction() -> String {
        return "私の名前は\(self.name)です。レベルは\(self.level)で、武器は\(self.buki)です。特殊技は\(self.waza)です"
    }
}

var Wizard = skill(name: "魔女", buki: "魔法の杖", level: 30, waza: "呪文を唱える")
print(Wizard.introduction())

