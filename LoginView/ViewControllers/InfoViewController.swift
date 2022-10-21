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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let user = User.getPerson()
        self.title = "\(user.name) \(user.surname)"
        infoLabel.text = user.description
        
        mySelfImage.image = UIImage(named: "Me")
       
       
        
        // Do any additional setup after loading the view.
    }
    override func viewWillLayoutSubviews() {
        mySelfImage.layer.cornerRadius = mySelfImage.frame.size.width / 2
        mySelfImage.clipsToBounds = true
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
