import Foundation

final class HomeViewModel{
    
    var welcomeMessage: ObservableObject<String?> = ObservableObject(nil)
    
    func getLoggedInUser(){
       let user = NetworkService.shared.getLoggedInUser()
        self.welcomeMessage.value = "Hello World"
    }
    
}
 
