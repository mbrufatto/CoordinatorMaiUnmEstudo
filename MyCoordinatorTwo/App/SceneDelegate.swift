import UIKit

protocol SessionNotifier: AnyObject {
    var isAuthenticated: Bool { get }
    var isAuthenticatedDidChange: (Bool) -> Void { get set }
}

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?
    var windowCoordinator: WindowCoordinator?

    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        guard let windowScene = (scene as? UIWindowScene) else { return }
        
        let window = UIWindow(frame: windowScene.coordinateSpace.bounds)
        window.windowScene = windowScene
        windowCoordinator = .init(
            window: window,
            sessionNotifier: SessionManager.shared,
            builder: DefaultRootCoordinatorBuilder()
        )
        windowCoordinator?.start()
    }
}

