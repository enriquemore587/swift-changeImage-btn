
//
//  ViewController.swift
//  App2
//
//  Created by ENRIQUE VERGARA  on 9/26/19.
//  Copyright © 2019 ENRIQUE VERGARA . All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var images = ["machu.jpg", "cuba.jpeg", "cuba2.jpeg", "cuba3.jpeg", "mexico.jpg"]
    
    var index = 0

    @IBOutlet weak var labelTexto: UILabel!
    
    @IBOutlet weak var image: UIImageView!
    
    @IBOutlet weak var button: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.labelTexto.text = self.images[self.index]
        self.labelTexto.textColor = UIColor.white
        self.labelTexto.backgroundColor = UIColor.black
        
        
        self.image.backgroundColor = UIColor.darkGray
        self.image.image = UIImage(named: self.images[self.index])
        self.image.contentMode = .redraw
        
        self.button.backgroundColor = UIColor.black
        self.button.setTitleColor(UIColor.white, for: .normal)
        self.button.titleLabel?.text = "Clickeame"
        self.button.layer.borderWidth = 2
        self.button.layer.cornerRadius = 8
    }
    
    
    @IBAction func btnPresionado(_ sender: UIButton) {
        self.labelTexto.backgroundColor = UIColor.black
        self.labelTexto.textColor = UIColor.white
        
        if self.index == self.images.count-1 {
            self.index = 0
        } else {
            self.index = self.index+1
        }
        
        self.labelTexto.text = self.images[index]
        
        self.image.image = UIImage(named: self.images[index])
        print(self.images[index])
    }
    
}

