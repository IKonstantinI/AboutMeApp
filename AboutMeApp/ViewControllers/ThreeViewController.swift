//
//  ThreeViewController.swift
//  AboutMeApp
//
//  Created by horze on 02.12.2023.
//

import UIKit

final class ThreeViewController: UIViewController {

    @IBOutlet var jobLabel: UILabel!
    
    var job: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        jobLabel.text = "Я работаю на должности \(job ?? "")"
    }
   
}
