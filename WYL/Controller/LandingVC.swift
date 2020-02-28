//
//  HomeVC.swift
//  WYL
//
//  Created by Tushar Singh on 27/02/20.
//  Copyright © 2020 Tushar Singh. All rights reserved.
//

import UIKit

class LandingVC: UIViewController{

    @IBOutlet weak var review: UIButton!
    @IBOutlet weak var propertyTableView: UITableView!
    @IBOutlet weak var residentImageView: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        propertyTableView.delegate = self
        propertyTableView.dataSource = self
        // Do any additional setup after loading the view.
    }
    



}



extension LandingVC:UITableViewDelegate,UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell.init(style: .default, reuseIdentifier: "cell")
        
        return cell
    }
    
    
}
