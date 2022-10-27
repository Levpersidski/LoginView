//
//  InfoViewController.swift
//  LoginView
//
//  Created by Роман Бакаев on 20.10.2022.
//

import UIKit

class InfoViewController: UIViewController {

    @IBOutlet var infoLabel: UILabel!
    @IBOutlet var mySelfImage: UIImageView!
    
    var user: User!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = user.person.fullName
        infoLabel.text = user.person.description
        mySelfImage.image = UIImage(named: user.person.anotherImage.first ?? "")
       
       
        
       
    }
    override func viewWillLayoutSubviews() {
        mySelfImage.layer.cornerRadius = mySelfImage.frame.size.width / 2
        mySelfImage.clipsToBounds = true
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
       guard let aboutMeVC = segue.destination as? AboutMeViewController else {return}
        aboutMeVC.user = user.person
    }
  
}
