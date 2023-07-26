//
//  LoginViewController.swift
//  ObsevableDataBinding
//
//  Created by Zülfü Akgüneş on 26.07.2023.
//

import UIKit

class LoginViewController:UIViewController{
    @IBOutlet weak var emailTextfield: UITextField!
    @IBOutlet weak var passwordTextfield: UITextField!
    
    private let viewModel = LoginViewModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupBinders()
    }
    
    private func setupBinders(){
        viewModel.error.binding { [weak self] error in
            if let error = error{
                print(error)
            }else{
                self?.goToHomePage()
            }
        }
    }
    
    private func goToHomePage(){
        let controller = storyboard?.instantiateViewController(withIdentifier: "HomeViewController") as! HomeViewController
        present(controller, animated: true)
    }
    
    @IBAction func loginActionButton(_ sender: Any) {
        guard let email = emailTextfield.text,
              let password = passwordTextfield.text else{
            return print("Please enter email and password")
        }
        viewModel.login(email: email, password: password)
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
}
