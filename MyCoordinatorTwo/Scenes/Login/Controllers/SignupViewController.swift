//
//  SignupViewController.swift
//  MyCoordinatorTwo
//
//  Created by Marcio Habigzang Brufatto on 25/06/21.
//

import UIKit

class SignupViewController: UIViewController {
    
    weak var coordinator: LoginCoordinator?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.view.backgroundColor = .systemGray.withAlphaComponent(0.3)
        self.title = "SignUp"
    }
}
