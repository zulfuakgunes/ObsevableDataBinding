//
//  LoginViewController.swift
//  ObsevableDataBinding
//
//  Created by Zülfü Akgüneş on 26.07.2023.
//

import UIKit

class LoginViewController:UIViewController{
    @IBOutlet weak var nameTextfield: UITextField!
    @IBOutlet weak var passwordTextfield: UITextField!
    
    private let viewModel = LoginViewModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func loginActionButton(_ sender: Any) {
        
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
}
