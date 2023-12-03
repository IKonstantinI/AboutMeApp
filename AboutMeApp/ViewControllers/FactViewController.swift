//
//  BioViewController.swift
//  AboutMeApp
//
//  Created by horze on 02.12.2023.
//

import UIKit

final class FactViewController: UIViewController {

    @IBOutlet var factLabel: UILabel!
    
    var fact: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        factLabel.text = "\(fact ?? "")"
    }
}
