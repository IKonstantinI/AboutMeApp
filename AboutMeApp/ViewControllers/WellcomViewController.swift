//
//  WellcomViewController.swift
//  AboutMeApp
//
//  Created by horze on 02.12.2023.
//

import UIKit

final class WelcomeViewController: UIViewController {
    
    @IBOutlet var welcomeLabel: UILabel!
    @IBOutlet var welcomePerson: UILabel!
    
    var userName: String!
    var personName: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        welcomeLabel.text = "Добро пожаловать, \(userName ?? "")!"
        welcomePerson.text = "Меня зовут \(personName ?? "")"
    }
}
