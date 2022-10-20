//
//  User.swift
//  LoginView
//
//  Created by Роман Бакаев on 20.10.2022.
//


struct User {
    let login = "Master"
    let password = "Bombaster"
    let person: Person
    
    static func getPerson () -> Person {
        Person(name: "Roman",
               surname: "Bakaev",
               description: "Я обожаю путешествовать! Так же как путешествовать я обожаю только спорт, какой бы он ни был. ")

    }
}

struct Person {
    let name: String
    let surname: String
    let description: String
    
}
