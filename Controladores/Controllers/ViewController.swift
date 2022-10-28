//
//  ViewController.swift
//  Controladores
//
//  Created by Máster Móviles on 28/10/22.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    
    @IBAction func retornoDeSecundaria(segue: UIStoryboardSegue) {

    }

    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        print(segue.identifier ?? "")
        switch segue.identifier {
        case "hopper":
            print("Aqtui")
            if let vc2 = segue.destination as? SecundarioViewController {
                vc2.mensaje = "hopper_bio"
            }
            break
        case "liskov":
            if let vc2 = segue.destination as? SecundarioViewController {
                vc2.mensaje = "liskov_bio"
            }
            break
        case "lovelace":
            if let vc2 = segue.destination as? SecundarioViewController {
                vc2.mensaje = "lovelace_bio"
            }
            break
        default:
            
            if let vc2 = segue.destination as? SecundarioViewController {
                vc2.mensaje = "Esto no tiene sentido"
            }
        }
           
     }

}

