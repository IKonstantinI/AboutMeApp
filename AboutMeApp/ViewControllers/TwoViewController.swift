//
//  TwoViewController.swift
//  AboutMeApp
//
//  Created by horze on 02.12.2023.
//

import UIKit

final class TwoViewController: UIViewController {

    @IBOutlet var nameLabel: UILabel!
    
    var surename: String!
    var age: Int!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        nameLabel.text = "Моя фамилия, \(surename ?? ""), мне \(age ?? 0) лет!"

    }
}
