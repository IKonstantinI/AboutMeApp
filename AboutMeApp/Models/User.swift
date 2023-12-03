//
//  User.swift
//  AboutMeApp
//
//  Created by horze on 02.12.2023.
//

struct User {
    let userName: String
    let password: String
}

func getUser() -> User {
    return User(userName: "User", password: "Password")
}

struct Person {
    let personName: String
    let personSurname: String
    let personJob: String
    let personЕducation: String
    let personFact: String
    let personAge: Int
}

func getPerson() -> Person {
    return Person(
        personName: "Константин",
        personSurname: "Короушкин",
        personJob: "Молочник",
        personЕducation: "Высшее образование",
        personFact: "Окончил институт МВД. Дослужился до звания старшего лейтенанта. По окончанию службы переехал с Санкт-Петербург. Женился. Появилось двое детей. В настоящее время, прикладываю усилия для смены рода деятельности в направлении разработки под IOS",
        personAge: 30
    )
}
