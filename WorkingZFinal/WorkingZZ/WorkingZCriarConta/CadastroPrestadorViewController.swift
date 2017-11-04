//
//  CadastroPrestadorViewController.swift
//  WorkingZCriarConta
//
//  Created by Icaro Alcantara Laudade on 26/10/17.
//  Copyright © 2017 Student. All rights reserved.
//

import UIKit

class CadastroPrestadorViewController: UIViewController {
    @IBOutlet weak var proximo: UIButton!
    
    @IBOutlet weak var observacoes: UITextField!
    @IBOutlet weak var naoPagarCom: UITextField!
    @IBOutlet weak var atendoOnde: UITextField!
    @IBOutlet weak var naoTrabalhoCom: UITextField!
    @IBOutlet weak var especializacoes: UITextField!
    @IBOutlet weak var isPrestador: UISwitch!
    override func viewDidLoad() {
        super.viewDidLoad()
        trocarTextoButton()
        // Do any additional setup after loading the view.
    }
    func trocarTextoButton(){
        if isPrestador.isOn {
            proximo.setTitle("Próximo", for: .normal)
        }
        else{
             proximo.setTitle("Finalizar", for: .normal)
        }
    }

    @IBAction func irProximoOuPerfil(_ sender: Any) {
        if isPrestador.isOn{
            performSegue(withIdentifier: "proximoSegue", sender: self)
        }else{
            performSegue(withIdentifier: "finalizarSegue", sender: self)
        }
    
    }
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
