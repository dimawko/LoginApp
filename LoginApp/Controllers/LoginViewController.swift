
import UIKit

class LoginViewController: UIViewController, UITextFieldDelegate {
    
    @IBOutlet var userNameTF: UITextField!
    @IBOutlet var passwordTF: UITextField!
    
    let userName = "dimawko"
    let password = "12345"
    let okAction = UIAlertAction(title: "OK", style: .default)
    
    override func viewDidLoad() {
        
        userNameTF.delegate = self
        passwordTF.delegate = self
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let welcomeVC = segue.destination as? WelcomeViewController else { return }
        welcomeVC.welcomeText = "Welcome, \(userNameTF.text ?? "")"
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        
        self.view.endEditing(true)
    }
    
    @IBAction func logInButtonPressed() {
        
        let alert = UIAlertController(
            title: "Invalid login or password",
            message: "Please, enter your correct login and password",
            preferredStyle: .alert
        )
        
        alert.addAction(okAction)
        
        if userNameTF.text != userName || passwordTF.text != password {
            present(alert, animated: true)
            passwordTF.text = ""
        } else {
            performSegue(withIdentifier: "loginSegue", sender: nil)
        }
    }
    
    @IBAction func forgotUserNameButtonPressed() {
        
        let alert = UIAlertController(
            title: "Oops!",
            message: "Your name is \(userName) 😉",
            preferredStyle: .alert
        )
        
        alert.addAction(okAction)
        present(alert, animated: true)
    }
    
    @IBAction func forgotPasswordButtonPressed() {
        
        let alert = UIAlertController(
            title: "Oops!",
            message: "Your password is \(password) 😉",
            preferredStyle: .alert
        )
        
        alert.addAction(okAction)
        present(alert, animated: true)
    }
    
    @IBAction func unwind(for segue: UIStoryboardSegue) {
        userNameTF.text = ""
        passwordTF.text = ""
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
