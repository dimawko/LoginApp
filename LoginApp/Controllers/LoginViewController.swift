
import UIKit

class LoginViewController: UIViewController {
    
    @IBOutlet var userNameTF: UITextField!
    @IBOutlet var passwordTF: UITextField!
    
    let userName = "dimawko"
    let password = "12345"
    
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
        
        let okAction = UIAlertAction(title: "OK", style: .default)
        
        alert.addAction(okAction)
        
        if userNameTF.text != userName || passwordTF.text != password {
            present(alert, animated: true)
            passwordTF.text = ""
        }
    }
    
    @IBAction func forgotUserNameButtonPressed() {
        
        let alert = UIAlertController(
            title: "Oops!",
            message: "Your name is \(userName) 😉",
            preferredStyle: .alert
        )
        
        let okAction = UIAlertAction(title: "OK", style: .default)
        
        alert.addAction(okAction)
        present(alert, animated: true)
    }
    
    @IBAction func forgotPasswordButtonPressed() {
        
        let alert = UIAlertController(
            title: "Oops!",
            message: "Your password is \(password) 😉",
            preferredStyle: .alert
        )
        
        let okAction = UIAlertAction(title: "OK", style: .default)
        
        alert.addAction(okAction)
        present(alert, animated: true)
    }
    
    @IBAction func unwind(for segue: UIStoryboardSegue) {
        userNameTF.text = ""
        passwordTF.text = ""
    }
}
