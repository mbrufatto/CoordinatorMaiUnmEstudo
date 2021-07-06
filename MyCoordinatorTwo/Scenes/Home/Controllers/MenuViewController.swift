import UIKit

class MenuViewController: UIViewController {

    var coordinator: HomeCoordinator?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = .systemGray.withAlphaComponent(0.3)
        self.title = "Menu"
    }
}
