//
//  WelcomeUIViewController.swift
//  Homework5
//
//  Created by testing on 07.10.2023.
//

import UIKit

final class WelcomeViewController: UIViewController {

    @IBOutlet weak var welcomeLabel: UILabel!
    
    var userName: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let userName = userName {
            welcomeLabel.text = "Welcome, \(userName)!"
        }
    }
    
    @IBAction func logoutPressed(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
}
