import UIKit

final class AppCoordinator: Coordinator {
    var window: UIWindow
    
    init(window: UIWindow) {
        self.window = window
    }
    
    func start() {
        let loginCoordinator = LoginCoordinator(window: window)
        loginCoordinator.coordinator = self
        loginCoordinator.start()
    }
}
