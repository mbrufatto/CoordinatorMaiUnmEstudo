import UIKit

protocol RootCoordinator {
    var rootViewController: UIViewController { get }
    func start()
}

protocol RootCoordinatorBuilder {
    func build(isAuthenticated: Bool) -> RootCoordinator
}

struct DefaultRootCoordinatorBuilder: RootCoordinatorBuilder {
    func build(isAuthenticated: Bool) -> RootCoordinator {
        if isAuthenticated {
            return UserAreaCoordinator(navigationController: .init())
        } else {
            return UnauthorizedAreaCoordinator(navigationController: .init())
        }
    }
}
