//
//  TableviewMODEL.swift
//  Survey
//
//  Created by Inger Montenegro on 5/12/18.
//  Copyright © 2018 Inger Montenegro. All rights reserved.
//

import Foundation
import UIKit

class TableviewMODELView: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    var teams : [String] = []
    

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return teams.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell: UITableViewCell = UITableViewCell(style: UITableViewCellStyle.subtitle, reuseIdentifier: "mycell")
        cell.textLabel?.text = teams[indexPath.row]
        cell.imageView!.image = UIImage(named: teams[indexPath.row])
        
        if teams[indexPath.row] == "Barcelona" {
            cell.textLabel?.text = "Llorones y Mamones"
            cell.detailTextLabel?.text = "Es verdadero"
        }
        return cell
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        teams = ["Es el Real Madrid el equipo que mas copas de la Champion League ha ganado?","Es el Barcelona el equipo que mas copas de la Champion League ha ganado?","Esta Costa Rica ubicado en Centro America?", "Esta Panama ubicado en Centro America?", "Es Saprissa el equipos con mas titulos de Costa Rica","Swift pertenece a Apple?","Xamarin pertenece a Apple?","Swift pertenece a Microsoft?", "Swift pertenece a Android?", "Swift pertenece a Oracle?", "Es Swift para hacer graficos?","Es Swift para hacer juegos?", "Es Swift para hacer paginas webs?", "Es Swift para diagrmas de red?","Azure pertenece a AWS?", "Azure pertenece a Amazon", "AWS pertenece a Amazon?","Costa Rica tiene 7 provincias","Es Messi el mejor jugador del mundo?", "Es Cristiano el mejor jugador del Mundo?"]
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}
