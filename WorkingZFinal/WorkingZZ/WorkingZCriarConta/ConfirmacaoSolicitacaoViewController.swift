//
//  ConfirmacaoSolicitacaoViewController.swift
//  WorkingZCriarConta
//
//  Created by Student on 20/10/17.
//  Copyright © 2017 Student. All rights reserved.
//

import UIKit

class ConfirmacaoSolicitacaoViewController: UIViewController {
    var formaPagamento  = ""
    @IBOutlet weak var activityLoad: UIActivityIndicatorView!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationController?.isNavigationBarHidden = true

        //navigationItem.hidesBackButton = true

        activityLoad.startAnimating()
    DispatchQueue.main.asyncAfter(deadline: .now() + .seconds(3)) {
            self.performSegue(withIdentifier: "andamentoServico", sender: self)
        }
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "andamentoServico" {
            
            // obtendo uma instância da nova viewController que será exibida
            if let andamento = segue.destination as? AndamentoServicoViewController{
                
                andamento.modoPagamento = self.formaPagamento
            }
        }
    }
    

}
