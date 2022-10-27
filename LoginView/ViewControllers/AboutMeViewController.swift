//
//  AboutMeViewController.swift
//  LoginView
//
//  Created by Роман Бакаев on 24.10.2022.
//

import UIKit

class AboutMeViewController: UIViewController {

    @IBOutlet var fullDescriptionLogin: UILabel!
    @IBOutlet var americaImage: UIImageView!
    
    var user: Person!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        fullDescriptionLogin.text = user.fullDescription
        americaImage.image = UIImage(named: user.anotherImage.last ?? "" )
    }



}
