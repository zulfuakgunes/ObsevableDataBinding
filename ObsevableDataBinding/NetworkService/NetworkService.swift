import Foundation

final class NetworkService{
    static let shared = NetworkService()
    
    var user: User?
    
    private init(){}
    
    func login(email:String, password:String, completion: @escaping (Bool) -> Void) {
        DispatchQueue.main.asyncAfter(deadline: .now() + 2){ [weak self] in
            if email == "test@test.com" && password == "password"{
                self?.user = User(firsName: "Zülfü", LastName: "Akgüneş", email: "zlf.akgns@gmail.com", password: "123456", age: 29)
                completion(true)
            }else{
                self?.user = nil
                completion(false)
            }
        }
    }
    
    func getLoggedInUser() -> User{
        return user!
    }
}
