import UIKit

class HomeCoordinator: Coordinator {
    var navigationController: UINavigationController
    var children: [Coordinator] = []
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        let menuViewController = MenuViewController()
        menuViewController.coordinator = self
        navigationController.pushViewController(menuViewController, animated: false)
    }
}
