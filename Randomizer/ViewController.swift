//
//  ViewController.swift
//  Randomizer
//
//  Created by Роман Бакаев on 03.06.2022.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet var userNameTextField: UITextField!
    
    @IBOutlet var passwordTF: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        userNameTextField.delegate = self
        passwordTF.delegate = self
    }
    
    
    private func alertController () {
        let alert = UIAlertController(title: "Invalid Login or Password", message: "If you can't remember, Pls use hints" , preferredStyle: .alert)
         
        alert.addAction(UIAlertAction(title: "TRY AGAIN", style: .default, handler: nil))
        self.present(alert, animated: true)
    }
    
    func prepareToLoad() {
        if userNameTextField.text != "Master" || passwordTF.text != "Bombaster" {
            alertController()
            passwordTF.text = ""
        }
    }
    @IBAction func actionButton() {
        view.endEditing(true)
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
       guard let greetingVC = segue.destination as? GreetingViewController else {return}
        greetingVC.welcomeUser = ("Welcome, \(userNameTextField.text!)👋")
        prepareToLoad()
    }
    @IBAction func unwind(for segue: UIStoryboardSegue) {
        guard let greetingVC = segue.source as? GreetingViewController else {return}
        userNameTextField.text = ""
        passwordTF.text = ""
        
        
       
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        view.endEditing(true)
            super .touchesBegan(touches, with: event)
    }
       
    
    @IBAction func LoginButtonPressed() {
    }
    
    @IBAction func ForgotNameButtonPressed() {
        let alert = UIAlertController(title: "Your User Name is", message: "Master" , preferredStyle: .alert)
         
        alert.addAction(UIAlertAction(title: "Let's try", style: .default, handler: nil))
        self.present(alert, animated: true)
    }
    
    @IBAction func ForgotPasswordButtonPressed() {
        let alert = UIAlertController(title: "Your password is", message: " Bombaster" , preferredStyle: .alert)
         
        alert.addAction(UIAlertAction(title: "Let's try", style: .default, handler: nil))
        self.present(alert, animated: true)
    }
    
}


extension ViewController:UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        if textField == userNameTextField { passwordTF.becomeFirstResponder()
         } else {
             prepareToLoad()
             performSegue(withIdentifier: "WelcomeViewController", sender: nil)
         }
         return true
     }
    
    }
    

