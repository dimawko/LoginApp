
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
        userNameTF.text = ""
        passwordTF.text = ""
    }
    
    @IBAction func forgotUserNameButtonPressed() {
        
        let alert = UIAlertController(
            title: "Oops!",
            message: "Your name is Dimash 😉",
            preferredStyle: .alert
        )
        
        let okAction = UIAlertAction(title: "OK", style: .default)
        
        alert.addAction(okAction)
        present(alert, animated: true)
    }
    
    @IBAction func forgotPasswordButtonPressed() {
        
        let alert = UIAlertController(
            title: "Oops!",
            message: "Your password is 12345 😉",
            preferredStyle: .alert
        )
        
        let okAction = UIAlertAction(title: "OK", style: .default)
        
        alert.addAction(okAction)
        present(alert, animated: true)
    }
}

