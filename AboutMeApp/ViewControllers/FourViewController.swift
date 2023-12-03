//
//  FourViewController.swift
//  AboutMeApp
//
//  Created by horze on 02.12.2023.
//

import UIKit

final class FourViewController: UIViewController {
    
    @IBOutlet var educationLabel: UILabel!
    
    var education: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        educationLabel.text = "У меня \(education ?? "")"
        
    }
}
