//
//  ViewController.swift
//  RekomandoUshqimin
//
//  Created by student1 on 9/19/18.
//  Copyright © 2018 student1. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var fotoHyrese: UIImageView!
    let foto:[String] = ["burger", "doner", "pasta", "pizza", "steak"]
    @IBOutlet weak var lblRez: UILabel!
    let cmimet:[String:Double] = ["burger":2.5, "doner":1.3, "pasta":3.7, "pizza":4.5, "steak":8.7]
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
    }

    
    @IBAction func btnSugjero(_ sender: Any) {
        
        let numriRandom:Int = Int(arc4random_uniform(UInt32(foto.count)))
        let emri:String = foto[numriRandom]
        
        fotoHyrese.image = UIImage.init(named: foto[numriRandom])
        
        let teksti:String = "Ushqimi i rekomanduar per sot eshte \(emri) dhe kushton \(cmimet[emri]!) Euro"
        
        lblRez.text = teksti
    }
    

}

