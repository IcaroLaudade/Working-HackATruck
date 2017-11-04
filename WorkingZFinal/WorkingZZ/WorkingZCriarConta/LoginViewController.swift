//
//  LoginViewController.swift
//  WorkingZCriarConta
//
//  Created by Student on 20/10/17.
//  Copyright © 2017 Student. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {
    
    @IBOutlet weak var erro: UILabel!
    @IBOutlet weak var senha: UITextField!
    @IBOutlet weak var login: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    
    @IBAction func logar(_ sender: Any) {
        let user = UsuarioDAO()
        if login.text == "" || senha.text == "" {
            erro.text = "Não deixar nenhum campo vazio."
        }else if user.isUsuario(login: self.login.text!, senha: self.senha.text!)  {
            performSegue(withIdentifier: "loginSegue", sender: self)
            
        }else{
            self.login.text = ""
            self.senha.text = ""
            self.erro.text = "Informações Invalidas."
        }
    }
    
    @IBAction func criarUmaConta(_ sender: Any) {
    
    performSegue(withIdentifier: "cadastroClienteSegue", sender: self)
    }
    /*@IBAction func login(_ sender: Any) {
     
        
    }*/
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
//In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    

}
