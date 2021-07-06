import UIKit

protocol Coordinator: AnyObject {
    var window: UIWindow { get }

    init(window: UIWindow)

    func start()
}
