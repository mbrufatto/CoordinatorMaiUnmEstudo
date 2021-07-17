import UIKit

class WindowCoordinator {
    private let window: UIWindow
    private let sessionNotifier: SessionNotifier
    private let builder: RootCoordinatorBuilder
    private(set) var child: RootCoordinator?
    
    init(
        window: UIWindow,
        sessionNotifier: SessionNotifier,
        builder: RootCoordinatorBuilder
    ) {
        self.window = window
        self.sessionNotifier = sessionNotifier
        self.builder = builder
    }
    
    func start() {
        sessionNotifier.isAuthenticatedDidChange = { [weak self] in
            self?.setRootViewController(isAuthenticated: $0)
        }
        setRootViewController(isAuthenticated: sessionNotifier.isAuthenticated)
        window.makeKeyAndVisible()
    }
    
    private func setRootViewController(isAuthenticated: Bool) {
        let child = builder.build(isAuthenticated: isAuthenticated)
        window.rootViewController = child.rootViewController
        child.start()
        self.child = child
    }
}
