import UIKit

class LoginCoordinator: Coordinator {
    var navigationController: UINavigationController
    var children: [Coordinator] = []
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        let loginViewController = LoginViewController()
        loginViewController.coordinator = self
        navigationController.pushViewController(loginViewController, animated: false)
    }
    
    func goToSignUp() {
        let signUpViewController = SignupViewController()
        navigationController.pushViewController(signUpViewController, animated: true)
    }
    
    func goToForgotPassword() {
        let forgotPassword = ForgotPasswordViewController()
        navigationController.pushViewController(forgotPassword, animated: true)
    }
    
    func goToHome() {
        let homeCoordinator = HomeCoordinator(navigationController: navigationController)
        homeCoordinator.start()
        children.append(homeCoordinator)
    }
}
