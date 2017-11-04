//
//  Cliente.swift
//  WorkingZCriarConta
//
//  Created by Student on 20/10/17.
//  Copyright © 2017 Student. All rights reserved.
//

import Foundation
class Cliente{
    var nome : String?
    var email : String?
    var senha : String?
    var idade :String?
    var rg: String?
    var cpf:String?
    var endereco : Endereco?
    init(nome:String,email:String,senha:String,idade:String,rg:String,cpf:String,endereco : Endereco){
        self.nome = nome
        self.email = email
        self.senha = senha
        self.idade = idade
        self.endereco = endereco
        self.rg = rg
        self.cpf = cpf
    }
    init(nome:String,email:String,idade:String,rg:String,cpf:String,endereco : Endereco){
        self.nome = nome
        self.email = email
        self.idade = idade
        self.endereco = endereco
        self.rg = rg
        self.cpf = cpf
    }

}
class Endereco{
    var estado : String?
    var cidade : String?
    var bairro : String?
    var rua : String?
    var numero : String?
    init(estado:String,cidade:String,bairro:String,rua:String,numero:String){
        self.estado = estado
        self.cidade = cidade
        self.bairro = bairro
        self.rua = rua
        self.numero = numero
    }

}

class UsuarioDAO{
    var usuarios = [Cliente(nome: "Icaro", email: "icaro@gmail.com", senha: "123456", idade: "20", rg: "307301606", cpf: "27618242372", endereco: Endereco(estado: "SP", cidade: "São Bernardo do Campo", bairro: "Batistini", rua: "Rua Luigi Batistini", numero: "340")),
                    Cliente(nome: "Jussara", email: "juss@gmail.com", senha: "654321", idade: "45", rg:"112367208", cpf: "98467883120",endereco: Endereco(estado: "SP",cidade: "São Bernardo do Campo",bairro: "Vila Marchi", rua: "Rua das Orquideas", numero: "623"))]
        func getUsuarios()->[Cliente]{
        return usuarios
        }
    func isUsuario(login:String,senha:String)->Bool{
        for i in usuarios {
            if i.email == login && i.senha == senha{
                return true
            }
        }
        return false
    }
    func cadastrarCliente(usuario : Cliente){
    usuarios.append(usuario)
    }
    
}
