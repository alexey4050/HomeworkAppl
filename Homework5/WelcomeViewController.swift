//
//  WelcomeUIViewController.swift
//  Homework5
//
//  Created by testing on 07.10.2023.
//

import UIKit

final class WelcomeViewController: UIViewController {

    @IBOutlet var welcomeLabel: UILabel!
    
    var user = ""
    
    private let otherModel = ModelColor()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addVerticalGradientLayer(topColor: otherModel.primaryColor, bottomColor: otherModel.secondaryColor)
        welcomeLabel.text = "Welcome, \(user)!"
        }
    }
    
    extension UIView {
        func addVerticalGradientLayer(topColor: UIColor, bottomColor: UIColor) {
            let gradient = CAGradientLayer()
            gradient.frame = bounds
            gradient.colors = [topColor.cgColor, bottomColor.cgColor]
            gradient.locations = [0.0, 1.0]
            gradient.startPoint = CGPoint(x: 0, y: 0)
            gradient.endPoint = CGPoint(x: 0, y: 1)
            layer.insertSublayer(gradient, at: 0)
        }
    }
