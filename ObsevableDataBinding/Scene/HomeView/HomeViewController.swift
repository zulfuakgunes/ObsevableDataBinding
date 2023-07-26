//
//  HomeViewController.swift
//  ObsevableDataBinding
//
//  Created by Zülfü Akgüneş on 26.07.2023.
//

import UIKit

class HomeViewController: UIViewController{
    
    private let viewModel = HomeViewModel()
    
    @IBOutlet weak var welcomeLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupBinders()
        viewModel.getLoggedInUser()
    }
    
    private func setupBinders(){
        viewModel.welcomeMessage.binding{[weak self] message in self?.welcomeLabel.text = message
            
        }
    }
    
}
