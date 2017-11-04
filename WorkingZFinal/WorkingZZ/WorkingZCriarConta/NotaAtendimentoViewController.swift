//
//  NotaAtendimentoViewController.swift
//  WorkingZCriarConta
//
//  Created by Icaro Alcantara Laudade on 21/10/17.
//  Copyright © 2017 Student. All rights reserved.
//

import UIKit

class NotaAtendimentoViewController: UIViewController {

    @IBOutlet weak var erro: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBAction func finalizar(_ sender: Any) {
        if let nota = Int(notaTxt.text!) {
            if nota<0 || nota > 10 {
                erro.text = "Digitar uma nota de 0 a 10."
            }else {
                performSegue(withIdentifier: "voltarPerfilSegue", sender: self)
                
            }
        }else {
            erro.text = "Nota inválida."
            
        }
        
    }
    @IBOutlet weak var notaTxt: UITextField!
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
