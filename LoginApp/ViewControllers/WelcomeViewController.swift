
import UIKit

class WelcomeViewController: UIViewController {
    
    @IBOutlet var welcomeLabel: UILabel!
    
    var userName: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let gradient: CAGradientLayer = CAGradientLayer()
        gradient.colors = [UIColor.cyan.cgColor, UIColor.purple.cgColor]
        gradient.locations = [0.0 , 1.0]
        gradient.startPoint = CGPoint(x : 0.0, y : 0)
        gradient.endPoint = CGPoint(x :0.0, y: 0.7)
        gradient.frame = view.bounds
        view.layer.insertSublayer(gradient, at: 0)
        
        welcomeLabel.numberOfLines = 0
        welcomeLabel.lineBreakMode = .byClipping
        welcomeLabel.text = "Welcome, \n \(userName ?? "User")"
    }
}
