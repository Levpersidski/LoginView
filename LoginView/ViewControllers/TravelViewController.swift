//
//  TravelViewController.swift
//  LoginView
//
//  Created by Роман Бакаев on 24.10.2022.
//

import UIKit

class TravelViewController: UIViewController {

    
    @IBOutlet var travelImageView: [UIImageView]!
    
    var travelImage: Person!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let images = travelImage.imageTravel
         let travelImagesAndOutlets = zip(travelImageView, images)
        
         for (outlet,image) in travelImagesAndOutlets {
             outlet.image = UIImage(named: image)
        
        
    }
    


}
}
