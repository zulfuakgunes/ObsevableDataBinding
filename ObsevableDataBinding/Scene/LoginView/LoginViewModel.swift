//
//  LoginViewModel.swift
//  ObsevableDataBinding
//
//  Created by Zülfü Akgüneş on 26.07.2023.
//

import Foundation

class LoginViewModel{
    
    var error:ObservableObject<String?> = ObservableObject(nil)
    
    func login(email:String, password:String){
        NetworkService.shared.login(email: email, password: password) {[weak self] success in
            self?.error.value = success ? nil : "Invalid Credentials!!!"
        }
    }
    
}
