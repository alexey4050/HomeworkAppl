//
//  PersonInformationViewController.swift
//  Homework5
//
//  Created by testing on 11.10.2023.
//

import UIKit

final class PersonInformationViewController: UIViewController {
    
    @IBOutlet weak var fotoPersonImage: UIImageView!
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var surnameLabel: UILabel!
    @IBOutlet weak var companyLabel: UILabel!
    @IBOutlet weak var appointmentLabel: UILabel!
    @IBOutlet weak var academicDegreeLabel: UILabel!
    
    private let model = ModelColor()

    private let personInformation = AboutPerson(namePerson: "Андрей", surnamePerson: "Сахаров", company: "АН РАН СССР", appointment: "ученый", academicTitle: "академик")
    
    override func viewDidLoad() {
        super.viewDidLoad()
        fotoPersonImage.image = UIImage(named: "FotoPerson")
        fotoPersonImage.layer.cornerRadius = fotoPersonImage.frame.size.width / 2
        view.addVerticalGradientLayer(topColor: model.primaryColor, bottomColor: model.secondaryColor)
    
        getLabel()
    }
    
    
    private func getLabel() {
        nameLabel.text = personInformation.namePerson
        surnameLabel.text = personInformation.surnamePerson
        companyLabel.text = personInformation.company
        appointmentLabel.text = personInformation.appointment
        academicDegreeLabel.text = personInformation.academicTitle
    }
}
