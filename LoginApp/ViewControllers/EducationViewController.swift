

import UIKit

class EducationViewController: UIViewController {

    @IBOutlet var userEducationLabel: UILabel!
    
    var education: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupLabels(userEducationLabel)
        userEducationLabel.text = education
    }
}
