//
//  AndamentoServicoViewController.swift
//  WorkingZCriarConta
//
//  Created by Icaro Alcantara Laudade on 21/10/17.
//  Copyright © 2017 Student. All rights reserved.
//

import UIKit

class AndamentoServicoViewController: UIViewController {
    var modoPagamento = ""
    @IBOutlet weak var dataInicio: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        let date = Date()
        let dtIni = Calendar.current.date(byAdding: .day, value: 3, to: date)
        let formatter = DateFormatter()
        formatter.dateFormat = "dd/MM/yyyy"
        let result = formatter.string(from: dtIni!)
        dataInicio.text = "Inicio: \(result)"
        // Do any additional setup after loading the view.
    }
    @IBAction func finalizar(_ sender: Any) {
        if modoPagamento == "Cartão de crédito"{
            performSegue(withIdentifier: "cartaoSegue", sender: self)
        }else    if modoPagamento == "Bitcoin"{
            performSegue(withIdentifier: "loginBitcoin", sender: self)
        }else if modoPagamento == "Dinheiro" {
            performSegue(withIdentifier: "dinheiroSegue", sender: self)
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
