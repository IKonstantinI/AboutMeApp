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
    
    var user: User!
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let factVC = segue.destination as? FactViewController else { return }
        factVC.user = user
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        welcomeLabel.text = "Добро пожаловать, \(user.userName)!"
        welcomePerson.text = "Меня зовут \(user.person.personName)"
    }
    
}
