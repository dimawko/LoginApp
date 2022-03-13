
struct User {
    let userName: String
    let password: String
    let person: Person
    
    static func getUserInfo() -> User {
        let user = User(userName: "dimawko", password: "12345", person: dimawko)
        return user
    }
}

struct Person {
    let realName: String
    let placeOfResidence: String
    let age: String
    let job: String
    let education: String
    let specialization: String
}

//MARK: - Users database
let dimawko = Person(
    realName: "Димаш Сагынткан",
    placeOfResidence: "Республика Казахстан",
    age: "24 года", job: "Комитет национальной безопасности РК",
    education: "МГИМО МИД РФ",
    specialization: "Экономист-международник"
)
