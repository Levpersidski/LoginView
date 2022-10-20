//
//  GreetingViewController.swift
//  Randomizer
//
//  Created by Роман Бакаев on 06.06.2022.
//

import UIKit



class GreetingViewController: UIViewController {

    
    @IBOutlet var welcomeLabel: UILabel!
    
    var user = ""
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let user = User.getPerson()
        welcomeLabel.text = "Welcome, \(user.name) \(user.surname) 🤘"
        createdGradient()
    }
    

    }
struct GradientColors {
    let topColor: UIColor
    let bottomColor:UIColor
    
    static func getColors() -> GradientColors{
        GradientColors(
            topColor: UIColor(red: 255/255, green: 181/255, blue: 216/255, alpha: 1),
            bottomColor: UIColor(red: 174/255, green: 242/255, blue: 165/255, alpha: 1)
        
        )
    }
    
    
}


extension   UIViewController {
    func createdGradient() {
        let gradient = CAGradientLayer()
        gradient.frame = view.bounds
        gradient.colors = [GradientColors.getColors().topColor.cgColor,
                           GradientColors.getColors().bottomColor.cgColor]
        gradient.locations = [0.0, 1.0]
        gradient.startPoint = CGPoint(x: 0, y: 0)
        gradient.endPoint = CGPoint(x: 0, y: 1)
        view.layer.insertSublayer(gradient, at: 0)
    }
}
