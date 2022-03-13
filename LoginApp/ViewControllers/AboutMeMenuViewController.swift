
import UIKit

class AboutMeMenuViewController: UIViewController {
    
    @IBOutlet var buttons: [UIButton]!
    
    var job: String!
    var placeOfResidence: String!
    var education: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        buttons.forEach { button in
            button.titleLabel?.adjustsFontSizeToFitWidth = true
            button.layer.cornerRadius = 25
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "OpenJobVC" {
            if let jobVC = segue.destination as? JobViewController {
                jobVC.job = job
            }
        } else if segue.identifier == "OpenPlaceOfResidenceVC" {
            if let placeOfResidenceVC = segue.destination as? PlaceOfResidence {
                placeOfResidenceVC.placeOfResidence = placeOfResidence
            }
        } else {
            if let educationVC = segue.destination as? EducationViewController {
                educationVC.education = education
            }
        }
    }
}
