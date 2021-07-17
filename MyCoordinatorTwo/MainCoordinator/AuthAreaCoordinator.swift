import UIKit

class UnauthorizedAreaCoordinator {
    let navigationController: UINavigationController

    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
}

extension UnauthorizedAreaCoordinator: RootCoordinator {
    var rootViewController: UIViewController { navigationController }

    func start() {
        let loginViewController = LoginViewController(coordinator: self)
        navigationController.setViewControllers([loginViewController], animated: true)
    }
}

extension UnauthorizedAreaCoordinator {
    
    func goToSignUp() {
        let signUpViewController = SignupViewController()
        self.navigationController.show(signUpViewController, sender: nil)
    }
    
    func goToForgotPassword() {
        let forgotPasswordViewController = ForgotPasswordViewController()
        self.navigationController.show(forgotPasswordViewController, sender: true)
    }
}
