//
//  FormaPagamentoViewController.swift
//  WorkingZCriarConta
//
//  Created by Student on 20/10/17.
//  Copyright © 2017 Student. All rights reserved.
//

import UIKit

class FormaPagamentoViewController: UIViewController {
    
    @IBOutlet weak var imageCard: UIImageView!
    
    @IBOutlet weak var imageMoney: UIImageView!
    @IBOutlet weak var imageBitcoin: UIImageView!
    var formaPagamento = "Cartão de crédito"
    @IBAction func selecionarDinheiro(_ sender: Any) {
        formaPagamento = "Dinheiro"
        imageMoney.image = UIImage(named: "oie_transparent.jpg")
        imageCard.image = UIImage(named:"")
        imageBitcoin.image = UIImage(named:"")
    }
    @IBAction func selecionarCartao(_ sender: Any) {
        formaPagamento = "Cartão de crédito"
        imageCard.image = UIImage(named: "oie_transparent.jpg")
        imageMoney.image = UIImage(named:"")
        imageBitcoin.image = UIImage(named:"")
    }
    @IBAction func selecionarBitcoin(_ sender: Any) {
        formaPagamento = "Bitcoin"
        imageBitcoin.image = UIImage(named: "oie_transparent.jpg")
        imageMoney.image = UIImage(named:"")
        imageCard.image = UIImage(named:"")
    }
    
    @IBAction func solicitar(_ sender: Any) {
         //   var pedido = Pedido(modoPagamento: <#T##String#>, valor: <#T##Double#>, prestadorServico: <#T##PrestadorServico#>, cliente: <#T##Cliente#>)
           performSegue(withIdentifier: "solicitacaoSegue", sender: self)
    
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "solicitacaoSegue" {
            
            // obtendo uma instância da nova viewController que será exibida
            if let confirma = segue.destination as? ConfirmacaoSolicitacaoViewController {
                
                confirma.formaPagamento = self.formaPagamento
            }
        }
    }
    

}
