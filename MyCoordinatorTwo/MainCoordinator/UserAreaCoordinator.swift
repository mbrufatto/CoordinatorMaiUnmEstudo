import UIKit

class UserAreaCoordinator {
    let navigationController: UINavigationController
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
}

extension UserAreaCoordinator: RootCoordinator {
    var rootViewController: UIViewController { navigationController }
    
    func start(){
        navigationController.setViewControllers([MenuViewController()], animated: true)
    }
}
