//
//  DetailsController.swift
//  Controladores
//
//  Created by Máster Móviles on 28/10/22.
//

import UIKit

class SecundarioViewController: UIViewController {
    var mensaje = ""
    
    @IBOutlet weak var texto: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        var texto = ""
        print("mensaje")
        print(self.mensaje)
        let asset = NSDataAsset(name: self.mensaje)
        if let data = asset?.data {
            texto = String(data: data, encoding: .utf8) ?? ""
            print(texto)
        }
        self.texto.text = texto
    
    }
}
