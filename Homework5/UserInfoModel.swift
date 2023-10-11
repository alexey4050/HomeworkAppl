//
//  UserInfoModel.swift
//  Homework5
//
//  Created by testing on 10.10.2023.
//

import UIKit

struct LoginUser {
    let username: String
    let password: String
}

struct AboutPerson {
    let namePerson: String
    let surnamePerson: String
    let company: String
    let appointment: String
    let academicTitle: String
}
struct BiographyUser {
    let textDiscribeBiographyPerson: String
}

struct ModelColor {
    let primaryColor = UIColor(
        red: 210/255,
        green: 109/255,
        blue: 128/255,
        alpha: 1
    )
    let secondaryColor = UIColor(
        red: 107/255,
        green: 148/255,
        blue: 230/255,
        alpha: 1
    )
}



