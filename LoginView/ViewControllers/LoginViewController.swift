//
//  ViewController.swift
//  Randomizer
//
//  Created by Роман Бакаев on 03.06.2022.
//

import UIKit

class LoginViewController: UIViewController {

    // MARK: - IB outlets
    @IBOutlet var userNameTextField: UITextField!
    @IBOutlet var passwordTF: UITextField!
    
    // MARK: - Private properties
   
    private let user = User.getUser()
    
    
    
    // MARK: Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
       guard let tabBarController = segue.destination as? UITabBarController else {return}
        guard let viewControllers = tabBarController.viewControllers else {return}
        
        for viewController in viewControllers {
            if let greetingVC = viewController as? GreetingViewController {
                greetingVC.user = user }
                
            else if let navigationVC = viewController as? UINavigationController {
                if let infoVC = navigationVC.topViewController as? InfoViewController {
                infoVC.user = user
            
                } else if let sportVC = navigationVC.topViewController as? SportViewController  {
                    sportVC.sportImage = user.person
                    
                } else if let travelVC = navigationVC.topViewController as? TravelViewController {
                    travelVC.travelImage = user.person
                    
                } else if let infoVC = navigationVC.topViewController as? InfoViewController {
                    infoVC.user = user
                }
            }
        }
    }


    
    
    // MARK: IBActions
    @IBAction func LoginButtonPressed() {
        if userNameTextField.text != user.login || passwordTF.text != user.password {
            showAlert(title: "Invalid Login or Password",
            message: "If you can't remember, Pls use hints")
        }
    }



@IBAction func ForgotUserNameButton() {
    showAlert(title: "Oops!", message: "Your name is \(user.login)")
    }
    
    @IBAction func ForgotPasswordbutton() {
        showAlert(title: "Oops!", message: "Your password is \(user.password)")
        
    }

    @IBAction func unwind(for segue: UIStoryboardSegue) {
        userNameTextField.text = ""
        passwordTF.text = ""
    }
    }

// MARK: - Private Methods
// MARK: - Alert Controller
extension LoginViewController{
    private func showAlert(title: String, message: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "TRY AGAIN", style: .default) { _ in

        }
        alert.addAction(okAction)
        present(alert, animated: true)
        passwordTF.text = ""
    }
}

// MARK: - UItextFieldDelegate
    extension LoginViewController: UITextFieldDelegate {
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
            super .touchesBegan(touches, with: event)
        view.endEditing(true)
    
    }

    

    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        if textField == userNameTextField { passwordTF.becomeFirstResponder()
         } else {
             LoginButtonPressed()
             performSegue(withIdentifier: "WelcomeViewController", sender: nil)
         }
         return true
     }
}
