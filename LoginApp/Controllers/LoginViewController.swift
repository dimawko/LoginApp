
import UIKit

class LoginViewController: UIViewController, UITextFieldDelegate {
    
    @IBOutlet var userNameTF: UITextField!
    @IBOutlet var passwordTF: UITextField!
    
    private let userName = "dimawko"
    private let password = "12345"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        userNameTF.delegate = self
        passwordTF.delegate = self
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let welcomeVC = segue.destination as? WelcomeViewController else { return }
        welcomeVC.userName = userName
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        
        view.endEditing(true)
    }
    
    @IBAction func logInButtonPressed() {
        if userNameTF.text != userName || passwordTF.text != password {
            getAlert(
                title: "Invalid login or password",
                message: "Please, enter your correct login and password"
            )
        } else {
            performSegue(withIdentifier: "loginSegue", sender: nil)
        }
    }
    
    @IBAction func forgotUserNameButtonPressed() {
        getAlert(title: "Oops!", message: "Your name is \(userName) 😉")
    }
    
    @IBAction func forgotPasswordButtonPressed() {
        getAlert(title: "Oops!", message: "Your password is \(password) 😉")
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
    
    private func getAlert(title: String, message: String) {
        let alert = UIAlertController(
            title: title,
            message: message,
            preferredStyle: .alert
        )
        
        let okAction = UIAlertAction(title: "OK", style: .default) { _ in
            self.passwordTF.text = ""
        }
         
        alert.addAction(okAction)
        present(alert, animated: true)
    }
}
