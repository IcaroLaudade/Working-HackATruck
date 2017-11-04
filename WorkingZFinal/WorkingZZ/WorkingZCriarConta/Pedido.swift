//
//  Pedido.swift
//  WorkingZCriarConta
//
//  Created by Student on 20/10/17.
//  Copyright © 2017 Student. All rights reserved.
//

import Foundation
class Pedido{
    var modoPagamento : String
    var valor : Double
    var prestadorServico :PrestadorServico
    var cliente : Cliente
    var notaAtendimento : Int?
    var status : String
    init(modoPagamento : String,valor:Double,prestadorServico:PrestadorServico,cliente:Cliente,status:String)
    {
        self.modoPagamento = modoPagamento
        self.valor = valor
        self.prestadorServico = prestadorServico
        self.cliente = cliente
        self.status = status
    }
}
class PedidoDAO {
    var pedidos = [Pedido(modoPagamento: "Dinheiro", valor: 105.50, prestadorServico: PrestadorServico(nome: "Igor", servicos: ["eletricista":130.00], categoria: "Eletrica", atendeDomicilio: true, possuiLojaFisica: false), cliente: Cliente(nome: "Icaro", email:"icaro@gmail.com" , idade: "20", rg: "307301606", cpf: "27618242372", endereco: Endereco(estado: "SP", cidade: "São Bernardo do Campo", bairro: "Batistini", rua: "Rua Luigi Batistini", numero: "340")), status: "Concluido"),
                   Pedido(modoPagamento: "Cartao de Credito", valor: 220.00, prestadorServico: PrestadorServico(nome: "Rubens", servicos: ["Consulta Medica":200.00], categoria: "Saude", atendeDomicilio: true, possuiLojaFisica: true), cliente: Cliente(nome: "Icaro", email:"icaro@gmail.com" , idade: "20", rg: "307301606", cpf: "27618242372", endereco: Endereco(estado: "SP", cidade: "São Bernardo do Campo", bairro: "Batistini", rua: "Rua Luigi Batistini", numero: "340")), status: "Concluido"),
                   Pedido(modoPagamento: "Cartao de Credito", valor: 200.00, prestadorServico: PrestadorServico(nome: "Aurelio", servicos: ["Pintura":250.00], categoria: "Reformas", atendeDomicilio: true, possuiLojaFisica: false), cliente: Cliente(nome: "Icaro", email:"icaro@gmail.com" , idade: "20", rg: "307301606", cpf: "27618242372", endereco: Endereco(estado: "SP", cidade: "São Bernardo do Campo", bairro: "Batistini", rua: "Rua Luigi Batistini", numero: "340")), status: "Em Andamento"),
                   Pedido(modoPagamento: "Dinheiro", valor: 34.00, prestadorServico: PrestadorServico(nome: "Carol", servicos: ["Manicure/Pedicure":35.00], categoria: "Beleza", atendeDomicilio: true, possuiLojaFisica: false), cliente: Cliente(nome: "Jussara", email:"juss@gmail.com" , idade: "45", rg: "11236720X", cpf: "98467883120", endereco: Endereco(estado: "SP", cidade: "São Bernardo do Campo", bairro: "Vila Marchi", rua: "Rua das Orquideas", numero: "623")), status: "Concluido"),
                   Pedido(modoPagamento: "Cartao de Debito", valor: 140.00, prestadorServico: PrestadorServico(nome: "Maria", servicos: ["Diarista":150.00], categoria: "Serviços Domésticos", atendeDomicilio: true, possuiLojaFisica: false), cliente: Cliente(nome: "Jussara", email:"juss@gmail.com" , idade: "45", rg: "11236720X", cpf: "98467883120", endereco: Endereco(estado: "SP", cidade: "São Bernardo do Campo", bairro: "Vila Marchi", rua: "Rua das Orquideas", numero: "623")), status: "Em Andamento")]
    func addPedido(pedido : Pedido){
        pedidos.append(pedido)
    }
    func getPedidos()->[Pedido]{
        return self.pedidos
    }
    
}
