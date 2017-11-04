//
//  FiltroBuscaViewController.swift
//  WorkingZCriarConta
//
//  Created by Student on 23/10/17.
//  Copyright © 2017 Student. All rights reserved.
//

import UIKit

class FiltroBuscaViewController: UIViewController {

    @IBOutlet weak var domicilio: UISwitch!
    @IBOutlet weak var lojaFisica: UISwitch!
    @IBOutlet weak var distancia: UISlider!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func categoria(_ sender: Any) {
            performSegue(withIdentifier: "categoriaSegue", sender: self)
    }

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "categoriaSegue" {
            
            // obtendo uma instância da nova viewController que será exibida
            if let categoria = segue.destination as? CategoriasTableViewController {
                
                categoria.isAtendimentoCasa = self.domicilio.isOn
                categoria.isLojaFisica = self.lojaFisica.isOn
            }
        }
    }
}
