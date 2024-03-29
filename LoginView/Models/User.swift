//
//  User.swift
//  LoginView
//
//  Created by Роман Бакаев on 20.10.2022.
//


struct User {
    var login : String
    var password : String
    let person: Person
    
    static func getUser () -> User {
        User(login: "Master",
             password: "Bombaster",
             person: Person.getPerson()
        )
  // данный метод возвращает экземпляр модели
        
    }
}

struct Person {
    let name: String
    let surname: String
    let description: String
    let fullDescription: String
    let imageSport: [String]
    let imageTravel: [String]
    let anotherImage: [String]
    
    var fullName: String {
        "\(name) \(surname)"
    }
    
    static func getPerson () -> Person {
        Person(name: "Roman",
               surname: "Bakaev",
               
               description: "Я обожаю путешествовать! Так же как путешествовать я обожаю только спорт, какой бы он ни был. Что бы узнать больше обо мне жми info сверху.Узнать о моих увлечениях используй навигацию ниже  ",
               
               fullDescription: "Всем привет! Меня зовут Роман. Мне 34 года, я живу в Тайланде. На солнечном острове Пхукет. Занимаюсь разработкой сайтов на Тильде. В данный момент обучаюсь разработке приложений на Swift'е, в самой крутой школе <Swiftbook>. Так же занимаюсь сьемкой ресторанных блюд. Мечтаю перебраться в Америку",
               
               imageSport: ["Gym","Snowboard", "Surf"],
               imageTravel: ["Maldives", "Thailand", "Mexico" ],
               anotherImage: ["Me", "America"]
               )

    }
}


