import UIKit

class AppCoordinator: Coordinator {
    
    var navigationController: UINavigationController
    var children: [Coordinator] = []
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        let loginCoordinator = LoginCoordinator(navigationController: navigationController)
        loginCoordinator.start()
        children.append(loginCoordinator)
    }
}
