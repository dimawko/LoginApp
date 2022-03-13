
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
    let job: String
    let education: String
}

enum placeOfResidence {
    case title
    case description
}

let dimawko = Person(
    realName: "Dimash Sagyntkan",
    placeOfResidence: "Republic of Kazakhstan",
    job: "KGS Space Technologies",
    education: "MGIMO University"
)
