
import UIKit

class LoginViewController: UIViewController {

    @IBOutlet var userNameTF: UITextField!
    @IBOutlet var passwordTF: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let settingsVC = segue.destination as? WelcomeViewController else { return }
        settingsVC.welcomeText = "Welcome, \(userNameTF.text ?? "")"
    }

    @IBAction func logInButtonPressed() {
        
    }
    
    @IBAction func forgotUserNameButtonPressed() {
        
    }
    
    @IBAction func forgotPasswordButtonPressed() {
        
    }
}

