//
//  LoginViewController.swift
//  AboutMeApp
//
//  Created by horze on 02.12.2023.
//

import UIKit

final class LoginViewController: UIViewController {
    
    @IBOutlet var userNameTextField: UITextField!
    @IBOutlet var passwordTextField: UITextField!
    
    private let user = User.getUser()
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let tabBarVC = segue.destination as? UITabBarController else { return }
        tabBarVC.viewControllers?.forEach { viewController in
            if let navigationVC = viewController as? UINavigationController {
                if let welcomeVC = navigationVC.topViewController as? WelcomeViewController {
                    welcomeVC.user = user
                }
            } else if let twoVC = viewController as? TwoViewController {
                twoVC.surename = user.person.personSurname
                twoVC.age = user.person.personAge
            } else if let threeVC = viewController as? ThreeViewController {
                threeVC.job = user.person.personJob
            } else if let fourVC = viewController as? FourViewController {
                fourVC.education = user.person.personЕducation
            }
        }
    }

    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        view.endEditing(true)
    }

    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
        guard userNameTextField.text == user.userName, passwordTextField.text == user.password else {
            showAlert(title: "Invalid login or password", message: "Enter correct login or password") {
                self.passwordTextField.text = ""
            }
            return false
        }
        return true
    }
    
    @IBAction func forgotRegisterData(_ sender: UIButton) {
        sender.tag == 0
        ? showAlert(title: "Magic", message: "Your name is \(user.userName)")
        : showAlert(title: "Magic", message: "Your password is \(user.password)")
    }
    
    @IBAction func unwind(for segue: UIStoryboardSegue) {
        userNameTextField.text = ""
        passwordTextField.text = ""
    }
    
    private func showAlert(title: String, message: String, completion: (() -> Void)? = nil) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default) { _ in
            completion?()
        }
        alert.addAction(okAction)
        present(alert, animated: true)
    }
}
