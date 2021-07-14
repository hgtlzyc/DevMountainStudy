//
//  ViewController.swift
//  AboutMeBasic
//
//  Created by lijia xu on 7/14/21.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var ageLabel: UILabel!
    @IBOutlet weak var profileImageView: UIImageView!
    @IBOutlet weak var bioLabel: UILabel!
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        setupAboutMe()
        
        
    }
    
    func setupAboutMe() {
        nameLabel.text = "Lee"
        titleLabel.text = "Hi"
        ageLabel.text = "28"
        bioLabel.text = "Love Dog + Swift + RC"
        profileImageView.image = UIImage(named: "myDog")
        
    }


}

