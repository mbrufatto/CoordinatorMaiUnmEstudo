import UIKit

protocol LoginCoordinatorProtocol: Coordinator {
    func goToHome()
    func goToForgotPassword()
    func goToSignUp()
}


final class LoginCoordinator: LoginCoordinatorProtocol {
    
    var coordinator: AppCoordinator?
    var window: UIWindow
    let navigationController = UINavigationController()
    
    init(window: UIWindow) {
        self.window = window
    }
    
    func start() {
        let loginViewController = LoginViewController()
        loginViewController.coordinator = self
        window.rootViewController = navigationController
        navigationController.pushViewController(loginViewController, animated: true)
    }
}


extension LoginCoordinator {
    func goToHome(){
        let homeCoordinator = HomeCoordinator(window: window)
        homeCoordinator.start()
    }
    func goToForgotPassword() {
        let forgotPassword = ForgotPasswordViewController()
        forgotPassword.coordinator = self
        navigationController.pushViewController(forgotPassword, animated: true)
    }
    
    func goToSignUp() {
        let signUp = SignupViewController()
        signUp.coordinator = self
        navigationController.pushViewController(signUp, animated: true)
    }
}
