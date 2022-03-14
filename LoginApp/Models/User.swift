
struct User {
    let userName: String
    let password: String
    let person: Person
    
    static func getUserInfo() -> User {
        User(userName: "dimawko", password: "12345", person: Person.getPersonInfo())
    }
}

struct Person {
    let realName: String
    let placeOfResidence: String
    let job: String
    let education: String
    
    static func getPersonInfo() -> Person {
        Person(
            realName: "Dimash Sagyntkan",
            placeOfResidence: "Republic of Kazakhstan",
            job: "KGS Space Technologies",
            education: "MGIMO University"
        )
    }
}
