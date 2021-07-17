import UIKit

class MenuViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = .systemGray.withAlphaComponent(0.3)
        self.title = "Menu"
        
        setupButton()
    }
    
    func setupButton() {
        let homeButton: UIButton = UIButton(frame: CGRect(x: 16, y: 320, width: 200, height: 50))
        homeButton.backgroundColor = .systemBlue
        homeButton.setTitle("Logout", for: .normal)
        homeButton.setTitleColor(.white, for: .normal)
        homeButton.addTarget(self, action: #selector(buttonTapped), for: .touchUpInside)
        self.view.addSubview(homeButton)
    }
    
    @objc func buttonTapped(sender: UIButton) {
        SessionManager.shared.logout()
    }
}
