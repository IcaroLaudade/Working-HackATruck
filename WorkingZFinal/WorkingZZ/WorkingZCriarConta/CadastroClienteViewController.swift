//
//  CadastroClienteViewController.swift
//  WorkingZCriarConta
//
//  Created by Student on 20/10/17.
//  Copyright © 2017 Student. All rights reserved.
//

import UIKit

class CadastroClienteViewController: UIViewController {
  
    @IBOutlet weak var nome: UITextField!
    @IBOutlet weak var email: UITextField!
    @IBOutlet weak var senha: UITextField!
    @IBOutlet weak var cpf: UITextField!    
    @IBOutlet weak var numero: UITextField!
    @IBOutlet weak var rua: UITextField!
    @IBOutlet weak var rg: UITextField!
    @IBOutlet weak var bairro: UITextField!
    @IBOutlet weak var cidade: UITextField!
    @IBOutlet weak var estado: UITextField!
    @IBOutlet weak var idade: UITextField!
    @IBOutlet weak var confirmasenha: UITextField!
    
    @IBOutlet weak var erro: UILabel!
    @IBAction func criarConta(_ sender: Any) {
        if nome.text! == "" || numero.text == "" || rua.text! == "" || cpf.text == "" || rg.text! == "" || bairro.text == "" || cidade.text! == "" || estado.text == "" || confirmasenha.text! == "" || senha.text == "" || email.text == "" {
            erro.text = "Preencher todos os campos."
        }else if let cpfValido = cpf.text?.isValidCPF {
            if cpfValido == false {
                erro.text = "CPF inválido"
            }
            else if senha.text != confirmasenha.text {
                erro.text = "Campos senha e confirmar senha diferentes"
            }else{
            let usuarioDAO = UsuarioDAO()
            let usuario = Cliente(nome: nome.text!, email: email.text!, senha: senha.text!, idade: idade.text!, rg: rg.text!, cpf: cpf.text!, endereco: Endereco(estado: estado.text!, cidade: cidade.text!, bairro: bairro.text!, rua: rua.text!, numero: numero.text!))
                usuarioDAO.cadastrarCliente(usuario: usuario)
              performSegue(withIdentifier: "cadastroParte2Segue", sender: self)
            }
        }
      
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
   /* @IBAction func criarUsuario(_ sender: Any) {
        if nome.text! == "" || /*numero.text == "" || rua.text! == "" */ cpf.text == "" || rg.text! == "" || bairro.text == "" || cidade.text! == "" || estado.text == "" || confirmasenha.text! == "" || senha.text == "" || email.text == "" {
            
        }
    
    }*/
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
extension String {
    var isValidCPF: Bool {
        let numbers = characters.flatMap({Int(String($0))})
        guard numbers.count == 11 && Set(numbers).count != 1 else { return false }
        let soma1 = 11 - ( numbers[0] * 10 +
            numbers[1] * 9 +
            numbers[2] * 8 +
            numbers[3] * 7 +
            numbers[4] * 6 +
            numbers[5] * 5 +
            numbers[6] * 4 +
            numbers[7] * 3 +
            numbers[8] * 2 ) % 11
        let dv1 = soma1 > 9 ? 0 : soma1
        let soma2 = 11 - ( numbers[0] * 11 +
            numbers[1] * 10 +
            numbers[2] * 9 +
            numbers[3] * 8 +
            numbers[4] * 7 +
            numbers[5] * 6 +
            numbers[6] * 5 +
            numbers[7] * 4 +
            numbers[8] * 3 +
            numbers[9] * 2 ) % 11
        let dv2 = soma2 > 9 ? 0 : soma2
        return dv1 == numbers[9] && dv2 == numbers[10]
    }
    var isValidCNPJ: Bool {
        let numbers = characters.flatMap({Int(String($0))})
        guard numbers.count == 14 && Set(numbers).count != 1 else { return false }
        let soma1 = 11 - ( numbers[11] * 2 +
            numbers[10] * 3 +
            numbers[9] * 4 +
            numbers[8] * 5 +
            numbers[7] * 6 +
            numbers[6] * 7 +
            numbers[5] * 8 +
            numbers[4] * 9 +
            numbers[3] * 2 +
            numbers[2] * 3 +
            numbers[1] * 4 +
            numbers[0] * 5 ) % 11
        let dv1 = soma1 > 9 ? 0 : soma1
        let soma2 = 11 - ( numbers[12] * 2 +
            numbers[11] * 3 +
            numbers[10] * 4 +
            numbers[9] * 5 +
            numbers[8] * 6 +
            numbers[7] * 7 +
            numbers[6] * 8 +
            numbers[5] * 9 +
            numbers[4] * 2 +
            numbers[3] * 3 +
            numbers[2] * 4 +
            numbers[1] * 5 +
            numbers[0] * 6 ) % 11
        let dv2 = soma2 > 9 ? 0 : soma2
        return dv1 == numbers[12] && dv2 == numbers[13]
    }
}
