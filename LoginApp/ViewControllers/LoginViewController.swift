
import UIKit

class LoginViewController: UIViewController {
    
    //MARK: - IBOutlets
    @IBOutlet var userNameTF: UITextField!
    @IBOutlet var passwordTF: UITextField!
    
    //MARK: - Private Properties
    private let user = User.getUserInfo()
    
    //MARK: - viewDidLoad
    override func viewDidLoad() {
        super.viewDidLoad()
        
        userNameTF.delegate = self
        passwordTF.delegate = self
    }
    
    //MARK: - Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if let tabBarController = segue.destination as? UITabBarController {
            for viewController in tabBarController.viewControllers! {
                if let welcomeVC = viewController as? WelcomeViewController {
                    welcomeVC.userName = user.person.realName
                } else if let navigationVC = viewController as? UINavigationController {
                    if let aboutUserVC = navigationVC.topViewController as? AboutMeMenuViewController {
                        aboutUserVC.job = user.person.job
                        aboutUserVC.placeOfResidence = user.person.placeOfResidence
                        aboutUserVC.education = user.person.education
                    }
                }
            }
        }
    }
    
    //MARK: - IBActions
    @IBAction func logInButtonPressed() {
        guard userNameTF.text == user.userName || passwordTF.text == user.password else {
            showAlert(
                title: "Invalid login or password",
                message: "Please, enter your correct login and password",
                textField: passwordTF
            )
            return
        }
            performSegue(withIdentifier: "openWelcomeVC", sender: nil)
        }
    
    @IBAction func showAuthorizationData(_ sender: UIButton) {
        sender.tag == 0
        ? showAlert(title: "Oops!", message: "Your name is \(user.userName) 😉")
        : showAlert(title: "Oops!", message: "Your password is \(user.password) 😉")
    }
    
    @IBAction func unwind(for segue: UIStoryboardSegue) {
        userNameTF.text = ""
        passwordTF.text = ""
    }
}

//MARK: - Alert Controller
extension LoginViewController {
    private func showAlert(title: String, message: String, textField: UITextField? = nil) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default) { _ in
            textField?.text = ""
        }
        
        alert.addAction(okAction)
        present(alert, animated: true)
    }
}


//MARK: - Keyboard
extension LoginViewController: UITextFieldDelegate {
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        
        view.endEditing(true)
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        if textField == userNameTF {
            passwordTF.becomeFirstResponder()
        } else {
            logInButtonPressed()
        }
        return true
    }
}
