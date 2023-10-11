//
//  BiographyViewController.swift
//  Homework5
//
//  Created by testing on 11.10.2023.
//

import UIKit

class BiographyViewController: UIViewController {

    @IBOutlet weak var discribeBiographyLabel: UILabel!
    
    private let biographyModel = ModelColor()
    
    private let biographyViewController = BiographyUser(textDiscribeBiographyPerson:
    "Андре́й Дми́триевич Са́харов (21 мая 1921, Москва — 14 декабря 1989, Москва) — советский физик-теоретик, академик АН СССР, общественный деятель, диссидент и правозащитник. Один из создателей первой советской водородной бомбы. Народный депутат СССР, автор проекта конституции Союза Советских Республик Европы и Азии. Лауреат Нобелевской премии мира за 1975 год.")
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addVerticalGradientLayer(topColor: biographyModel.primaryColor, bottomColor: biographyModel.secondaryColor)
        discribeBiographyLabel.text = biographyViewController.textDiscribeBiographyPerson
    }
}
