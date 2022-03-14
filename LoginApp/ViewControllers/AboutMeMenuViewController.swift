
import UIKit

class AboutMeMenuViewController: UIViewController {
    
    @IBOutlet var buttons: [UIButton]!
    
    var userPersonaInfo: User!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        buttons.forEach { button in
            button.titleLabel?.adjustsFontSizeToFitWidth = true
            button.layer.cornerRadius = 25
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        switch segue.identifier {
        case "OpenJobVC":
            if let jobVC = segue.destination as? JobViewController {
                jobVC.job = userPersonaInfo.person.job
            }
        case "OpenPlaceOfResidenceVC":
            if let placeOfResidenceVC = segue.destination as? PlaceOfResidence {
                placeOfResidenceVC.placeOfResidence = userPersonaInfo.person.placeOfResidence
            }
        default:
            if let educationVC = segue.destination as? EducationViewController {
                educationVC.education = userPersonaInfo.person.education
            }
        }
    }
}
