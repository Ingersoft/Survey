//
//  ViewController.swift
//  Survey
//
//  Created by Inger Montenegro on 5/5/18.
//  Copyright © 2018 Inger Montenegro. All rights reserved.
//

import UIKit

class ViewController: UIViewController {


var Flag: Bool = false
var Buenas: Int = 0
var Malas: Int = 0
var Contador: Int = 0
    
var Lista: [String] = ["Es el Real Madrid el equipo que mas copas de la Champion League ha ganado?","Es el Barcelona el equipo que mas copas de la Champion League ha ganado?","Esta Costa Rica ubicado en Centro America?", "Esta Panama ubicado en Centro America?"]
    
    
    @IBOutlet weak var Question: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        Question.text = Lista[Contador]
        // Do any additional setup after loading the view, typically from a nib.
        
    }

    @IBAction func Answer(_ sender: UISegmentedControl) {
        Contador = Contador + 1
        if sender.selectedSegmentIndex == 0 {
            Buenas = Buenas + 1
        }
        else {
            Malas = Malas + 1
        }
    }
    
    
    @IBAction func Next(_ sender: UIButton) {
    Question.text = Lista[Contador]
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

