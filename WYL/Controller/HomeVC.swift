//
//  HomeVC.swift
//  WYL
//
//  Created by Tushar Singh on 22/02/20.
//  Copyright © 2020 Tushar Singh. All rights reserved.
//

import UIKit

class HomeVC: UIViewController {

    @IBOutlet weak var fb: UIButton!
    @IBOutlet weak var appleLogin: UIButton!
    @IBOutlet weak var loginButton: UIButton!
    @IBOutlet weak var signupButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        fb.imageView?.contentMode = .scaleAspectFit
        appleLogin.imageView?.contentMode = .scaleAspectFit
        addCornerRadius(button: fb)
        addCornerRadius(button: loginButton)
        addCornerRadius(button: appleLogin)
        addCornerRadius(button: signupButton)
        signupButton.layer.borderWidth = 1
        signupButton.layer.borderColor = signupButton.currentTitleColor.cgColor
        appleLogin.layer.borderWidth=1
        appleLogin.layer.borderColor=UIColor.black.cgColor

    }
    func addCornerRadius(button:UIButton){
        button.layer.cornerRadius = button.frame.height/2
    }
    

}
