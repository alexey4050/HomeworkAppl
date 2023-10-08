//
//  ViewController.swift
//  Homework5
//
//  Created by testing on 07.10.2023.
//

import UIKit

class LoginViewController: UIViewController {
    
    @IBOutlet weak var userNameTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    let user = "User"
    let password = "password"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        userNameTextField.autocorrectionType = .no
        userNameTextField.spellCheckingType = .no
        
        passwordTextField.autocorrectionType = .no
        passwordTextField.spellCheckingType = .no
        
        passwordTextField.isSecureTextEntry = true
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        view.endEditing(true)
    }
    
    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
        guard userNameTextField.text == user, passwordTextField.text == password else {
            let alertController = UIAlertController(title: "Invalid Credentials", message: "Please, enter valid username and password", preferredStyle: .alert)
            let okAction =  UIAlertAction(title: "OK", style: .default)
            alertController.addAction(okAction)
            present(alertController, animated: true)
            return false
        }
        return true
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "WelcomeSegue" {
            if let destinationVC = segue.destination as? WelcomeViewController {
                destinationVC.userName = userNameTextField.text
            }
        }
    }
        
    @IBAction func correctLogin(_ sender: UIButton) {
        let alert = UIAlertController(title: "Oops!", message: "My username is User", preferredStyle: .alert)
        let action = UIAlertAction(title: "OK", style: .default, handler: nil)
        alert.addAction(action)
        present(alert, animated: true, completion: nil)
    }
    
    @IBAction func correctPassword(_ sender: UIButton) {
        let alert = UIAlertController(title: "Oops!", message: "My password is password", preferredStyle: .alert)
        let action = UIAlertAction(title: "OK", style: .default, handler: nil)
        alert.addAction(action)
        present(alert, animated: true, completion: nil)
    }
    
    @IBAction func unwindToLogin(from segue: UIStoryboardSegue) {
        userNameTextField.text = ""
        passwordTextField.text = ""
    }
}

