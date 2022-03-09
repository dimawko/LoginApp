
import UIKit

class WelcomeViewController: UIViewController {
    
    @IBOutlet var welcomeLabel: UILabel!
    
    var welcomeText: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let gradient: CAGradientLayer = CAGradientLayer()
        gradient.colors = [UIColor.cyan.cgColor, UIColor.purple.cgColor]
        gradient.locations = [0.0 , 1.0]
        gradient.startPoint = CGPoint(x : 0.0, y : 0)
        gradient.endPoint = CGPoint(x :0.0, y: 0.7)
        gradient.frame = view.bounds
        self.view.layer.insertSublayer(gradient, at: 0)
        
        welcomeLabel.text = welcomeText
    }
    
    @IBAction func logOutButton() {
        dismiss(animated: true)
    }
}
