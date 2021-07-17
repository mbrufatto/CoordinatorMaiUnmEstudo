import Foundation

class SessionManager: SessionNotifier {
    static let shared = SessionManager()

    private init() {}

    private(set) var isAuthenticated: Bool = false {
        didSet {
            isAuthenticatedDidChange(isAuthenticated)
        }
    }

    var isAuthenticatedDidChange: (Bool) -> Void = { _ in }

    func login() {
        isAuthenticated = true
    }

    func logout() {
        isAuthenticated = false
    }
}
