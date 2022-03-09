
import UIKit

class WelcomeViewController: UIViewController {
    
    @IBOutlet var welcomeLabel: UILabel!
    
    var welcomeText: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        welcomeLabel.text = welcomeText
    }

    @IBAction func logOutButton() {
        dismiss(animated: true)
    }
}
