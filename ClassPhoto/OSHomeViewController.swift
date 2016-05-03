//
//  OSHomeViewController.swift
//  ClassPhoto
//
//  Created by Jim Boulter on 5/3/16.
//  Copyright © 2016 OpenSource. All rights reserved.
//

import UIKit
import SnapKit

class OSHomeViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        let button = UIButton(type: .Custom)
        button.addTarget(self, action: #selector(buttonPressed), forControlEvents: .TouchUpInside)
        
        self.view.addSubview(button)
        
        button.snp_makeConstraints { (make) in
            make.edges.equalTo(self.view)
        }
    }
    
    func buttonPressed() {
        let imageView = UIImageView(image: UIImage(named: "class"))
        
        self.view.addSubview(imageView)
        
        imageView.snp_makeConstraints { (make) in
            make.edges.equalTo(self.view)
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
