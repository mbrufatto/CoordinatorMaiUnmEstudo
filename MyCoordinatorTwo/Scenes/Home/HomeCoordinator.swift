import UIKit

final class HomeCoordinator: Coordinator {
    
    var navigationController: UINavigationController = UINavigationController()
    var window: UIWindow
    
    init(window: UIWindow) {
        self.window = window
    }
    
    func start() {
        let menuViewController = MenuViewController()
        window.rootViewController = navigationController
        menuViewController.coordinator = self
        navigationController.pushViewController(menuViewController, animated: true)
    }
}
