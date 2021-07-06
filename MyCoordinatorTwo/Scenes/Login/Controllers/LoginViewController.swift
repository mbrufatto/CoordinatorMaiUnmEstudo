import UIKit

class LoginViewController: UIViewController{

    var coordinator: LoginCoordinator?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = .systemGray.withAlphaComponent(0.3)
        self.title = "Login"
        
        let signUpbutton: UIButton = UIButton(frame: CGRect(x: 16, y: 200, width: 200, height: 50))
        signUpbutton.backgroundColor = .systemBlue
        signUpbutton.setTitle("SignUp", for: .normal)
        signUpbutton.setTitleColor(.white, for: .normal)
        signUpbutton.addTarget(self, action: #selector(tapSignUpButton), for: .touchUpInside)
        self.view.addSubview(signUpbutton)
        
        let forgotPasswordbutton: UIButton = UIButton(frame: CGRect(x: 16, y: 260, width: 200, height: 50))
        forgotPasswordbutton.backgroundColor = .systemBlue
        forgotPasswordbutton.setTitle("Forgot Password", for: .normal)
        forgotPasswordbutton.setTitleColor(.white, for: .normal)
        forgotPasswordbutton.addTarget(self, action: #selector(tapForgotPasswordButton), for: .touchUpInside)
        self.view.addSubview(forgotPasswordbutton)
        
        let homeButton: UIButton = UIButton(frame: CGRect(x: 16, y: 320, width: 200, height: 50))
        homeButton.backgroundColor = .systemBlue
        homeButton.setTitle("Home", for: .normal)
        homeButton.setTitleColor(.white, for: .normal)
        homeButton.addTarget(self, action: #selector(tapHomeButton), for: .touchUpInside)
        self.view.addSubview(homeButton)
    }
    
    @objc func tapSignUpButton() {
        coordinator?.goToSignUp()
    }

    @objc func tapForgotPasswordButton() {
        coordinator?.goToForgotPassword()
    }

    @objc func tapHomeButton() {
        coordinator?.goToHome()

    }
}
