
import UIKit

class PlaceOfResidence: UIViewController {
    
    @IBOutlet var userPlaceOfResidenceLabel: UILabel!
    
    var placeOfResidence: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupLabels(userPlaceOfResidenceLabel)
        userPlaceOfResidenceLabel.text = placeOfResidence
    }
}

extension UIViewController {
    func setupLabels(_ label: UILabel) {
        label.layer.cornerRadius = 10
        label.layer.masksToBounds = true
    }
}

