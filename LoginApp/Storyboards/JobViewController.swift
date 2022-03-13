
import UIKit

class JobViewController: UIViewController {
    
    @IBOutlet var userJobLabel: UILabel!
    
    var job: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupLabels(userJobLabel)
        userJobLabel.text = job
    }
}
