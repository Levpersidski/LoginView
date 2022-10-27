//
//  SportViewController.swift
//  LoginView
//
//  Created by Роман Бакаев on 24.10.2022.
//

import UIKit

class SportViewController: UIViewController {

    @IBOutlet var sportImageView: [UIImageView]!
    
    var sportImage: Person!
    
    override func viewDidLoad() {
        super.viewDidLoad()

       let images = sportImage.imageSport
        let sportImagesAndOutlets = zip(sportImageView, images)
       
        for (outlet,image) in sportImagesAndOutlets {
            outlet.image = UIImage(named: image)
        }
        
    }
    

    

}
