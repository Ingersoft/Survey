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
    
var Lista: [String] = ["Es el Real Madrid el equipo que mas copas de la Champion League ha ganado?","Es el Barcelona el equipo que mas copas de la Champion League ha ganado?","Esta Costa Rica ubicado en Centro America?", "Esta Panama ubicado en Centro America?", "Es Saprissa el equipos con mas titulos de Costa Rica","Swift pertenece a Apple?","Xamarin pertenece a Apple?","Swift pertenece a Microsoft?", "Swift pertenece a Android?", "Swift pertenece a Oracle?", "Es Swift para hacer graficos?","Es Swift para hacer juegos?", "Es Swift para hacer paginas webs?", "Es Swift para diagrmas de red?","Azure pertenece a AWS?", "Azure pertenece a Amazon", "AWS pertenece a Amazon?","Costa Rica tiene 7 provincias","Es Messi el mejor jugador del mundo?", "Es Cristiano el mejor jugador del Mundo?"]
    
    
    @IBOutlet weak var Question: UILabel!
    @IBOutlet weak var AnswerControl: UISegmentedControl!
    @IBOutlet weak var NumQuestions: UILabel!
    @IBOutlet weak var EndofSurvey: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        Question.text = Lista[Contador]
        AnswerControl.selectedSegmentIndex = 1
        NumQuestions.text = String(Contador + 1)  + "/20"
        // Do any additional setup after loading the view, typically from a nib.
        
    }

    @IBAction func Answer(_ sender: UISegmentedControl) {
        Contador = Contador + 1
        Flag = true
        if sender.selectedSegmentIndex == 0 {
            Buenas = Buenas + 1
        }
        else {
            Malas = Malas + 1
        }
    }
    
    @IBAction func Next(_ sender: UIButton) {
        if Flag != true{
         Contador = Contador + 1
            if AnswerControl.selectedSegmentIndex == 0 {
                Buenas = Buenas + 1
            }
            else {
                Malas = Malas + 1
            }
        }
        
        if Contador == Lista.count {
            Question.text = "RESULTADO Buenas: " + String(Buenas) + " - Malas: " + String(Malas)
            NumQuestions.text = String(Contador) + "/20"
            EndofSurvey.setTitle("FIN", for: UIControlState.normal)
         
            //editButton.isUserInteractionEnabled = false
            EndofSurvey.isUserInteractionEnabled = false
        }
        else {
        NumQuestions.text = String(Contador + 1) + "/20"
        Question.text = Lista[Contador]
        Flag = false
        }
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

