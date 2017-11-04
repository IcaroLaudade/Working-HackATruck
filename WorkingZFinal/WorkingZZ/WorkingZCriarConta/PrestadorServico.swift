//
//  PrestadorServico.swift
//  WorkingZCriarConta
//
//  Created by Student on 23/10/17.
//  Copyright © 2017 Student. All rights reserved.
//

import Foundation
class PrestadorServico {
    var nome = ""
    var servicos : [String:Double]
    var categoria : String?
    var atendeDomicilio : Bool?
    var possuiLojaFisica : Bool?
    var diasTrabalhados : Int? = 5
    var qtdServicosPrestados : Int? = 10
    var media : Double? = 10
    init(nome : String,servicos : [String:Double],categoria:String,atendeDomicilio:Bool,possuiLojaFisica:Bool,diasTrabalhados : Int,qtdServicosPrestados : Int,media : Double){
    self.nome = nome
    self.servicos = servicos
    self.categoria = categoria
    self.atendeDomicilio = atendeDomicilio
    self.possuiLojaFisica = possuiLojaFisica
    }
}
class PrestadorServicoDAO{
    var prestadores = [PrestadorServico(nome:"Igor",servicos:["Eletricista":130.00],categoria:"Elétrica",atendeDomicilio:true,possuiLojaFisica:false,diasTrabalhados : 15,qtdServicosPrestados : 14,media : 8.75),
                       PrestadorServico(nome:"Paulo",servicos:["Eletricista":100.00],categoria:"Elétrica",atendeDomicilio:true,possuiLojaFisica:false,diasTrabalhados : 15,qtdServicosPrestados : 14,media : 8.75),
                       PrestadorServico(nome:"Thiago",servicos:["Eletricista":120.00],categoria:"Elétrica",atendeDomicilio:true,possuiLojaFisica:false,diasTrabalhados : 15,qtdServicosPrestados : 14,media : 8.75),
                       PrestadorServico(nome:"Valdemir",servicos:["Resistência":25.00],categoria:"Elétrica",atendeDomicilio:true,possuiLojaFisica:false,diasTrabalhados : 15,qtdServicosPrestados : 14,media : 8.75),
                       PrestadorServico(nome:"Wanderley",servicos:["Resistência":50.00],categoria:"Elétrica",atendeDomicilio:true,possuiLojaFisica:false,diasTrabalhados : 15,qtdServicosPrestados : 14,media : 8.75),
                       PrestadorServico(nome:"Rinaldo",servicos:["Resistência":60.00],categoria:"Elétrica",atendeDomicilio:true,possuiLojaFisica:false,diasTrabalhados : 15,qtdServicosPrestados : 14,media : 8.75),
                       PrestadorServico(nome:"Figueiredo",servicos:["Lâmpadas":40.00],categoria:"Elétrica",atendeDomicilio:true,possuiLojaFisica:false,diasTrabalhados : 15,qtdServicosPrestados : 14,media : 8.75),
                       PrestadorServico(nome:"Eduardo",servicos:["Lâmpadas":50.00],categoria:"Elétrica",atendeDomicilio:true,possuiLojaFisica:false,diasTrabalhados : 15,qtdServicosPrestados : 14,media : 8.75),
                       PrestadorServico(nome:"Lindovaldo",servicos:["Lâmpadas":50.00],categoria:"Elétrica",atendeDomicilio:true,possuiLojaFisica:false,diasTrabalhados : 15,qtdServicosPrestados : 14,media : 8.75),
                       PrestadorServico(nome:"Maria",servicos:["Diarista":150.00],categoria:"Serviços Domésticos",atendeDomicilio:true,possuiLojaFisica:false,diasTrabalhados : 15,qtdServicosPrestados : 14,media : 8.75),
                       PrestadorServico(nome:"Isabela",servicos:["Diarista":150.00],categoria:"Serviços Domésticos",atendeDomicilio:true,possuiLojaFisica:false,diasTrabalhados : 15,qtdServicosPrestados : 14,media : 8.75),
                       PrestadorServico(nome:"Domingas",servicos:["Diarista":150.00],categoria:"Serviços Domésticos",atendeDomicilio:true,possuiLojaFisica:false,diasTrabalhados : 15,qtdServicosPrestados : 14,media : 8.75),
                       PrestadorServico(nome:"Gabriela",servicos:["Baba":150.00],categoria:"Serviços Domésticos",atendeDomicilio:true,possuiLojaFisica:false,diasTrabalhados : 15,qtdServicosPrestados : 14,media : 8.75),
                       PrestadorServico(nome:"Zuleide",servicos:["Baba":175.00],categoria:"Serviços Domésticos",atendeDomicilio:true,possuiLojaFisica:false,diasTrabalhados : 15,qtdServicosPrestados : 14,media : 8.75),
                       PrestadorServico(nome:"Tania",servicos:["Baba":140.00],categoria:"Serviços Domésticos",atendeDomicilio:true,possuiLojaFisica:false,diasTrabalhados : 15,qtdServicosPrestados : 14,media : 8.75),
                       PrestadorServico(nome:"Aparecida",servicos:["Lavanderia":120.00],categoria:"Serviços Domésticos",atendeDomicilio:true,possuiLojaFisica:true,diasTrabalhados : 15,qtdServicosPrestados : 14,media : 8.75),
                       PrestadorServico(nome:"Ingrid",servicos:["Lavanderia":100.00],categoria:"Serviços Domésticos",atendeDomicilio:true,possuiLojaFisica:true,diasTrabalhados : 15,qtdServicosPrestados : 14,media : 8.75),
                       PrestadorServico(nome:"Pamela",servicos:["Lavanderia":125.00],categoria:"Serviços Domésticos",atendeDomicilio:true,possuiLojaFisica:true,diasTrabalhados : 15,qtdServicosPrestados : 14,media : 8.75),
                       PrestadorServico(nome:"Aurelio",servicos:["Pintura":250.00],categoria:"Reformas",atendeDomicilio:true,possuiLojaFisica:false,diasTrabalhados : 15,qtdServicosPrestados : 14,media : 8.75),
                       PrestadorServico(nome:"Joao",servicos:["Pintura":150.00],categoria:"Reformas",atendeDomicilio:true,possuiLojaFisica:false,diasTrabalhados : 15,qtdServicosPrestados : 14,media : 8.75),
                       PrestadorServico(nome:"Lucas",servicos:["Pintura":140.00],categoria:"Reformas",atendeDomicilio:true,possuiLojaFisica:false,diasTrabalhados : 15,qtdServicosPrestados : 14,media : 8.75),
                       PrestadorServico(nome:"Luiz",servicos:["Encanamento":150.00],categoria:"Reformas",atendeDomicilio:true,possuiLojaFisica:false,diasTrabalhados : 15,qtdServicosPrestados : 14,media : 8.75),
                       PrestadorServico(nome:"Carlos",servicos:["Encanamento":180.00],categoria:"Reformas",atendeDomicilio:true,possuiLojaFisica:false,diasTrabalhados : 15,qtdServicosPrestados : 14,media : 8.75),
                       PrestadorServico(nome:"Florisvaldo",servicos:["Reboco":140.00],categoria:"Reformas",atendeDomicilio:true,possuiLojaFisica:false,diasTrabalhados : 15,qtdServicosPrestados : 14,media : 8.75),
                       PrestadorServico(nome:"Teobaldo",servicos:["Reboco":150.00],categoria:"Reformas",atendeDomicilio:true,possuiLojaFisica:false,diasTrabalhados : 15,qtdServicosPrestados : 14,media : 8.75),
                       PrestadorServico(nome:"Nivaldo",servicos:["Construção":300.00],categoria:"Reformas",atendeDomicilio:true,possuiLojaFisica:false,diasTrabalhados : 15,qtdServicosPrestados : 14,media : 8.75),
                       PrestadorServico(nome:"Michelangelo",servicos:["Construção":500.00],categoria:"Reformas",atendeDomicilio:true,possuiLojaFisica:false,diasTrabalhados : 15,qtdServicosPrestados : 14,media : 8.75),
                       PrestadorServico(nome:"Lúcio",servicos:["Construção":450.00],categoria:"Reformas",atendeDomicilio:true,possuiLojaFisica:false,diasTrabalhados : 15,qtdServicosPrestados : 14,media : 8.75),
                       PrestadorServico(nome:"Luciano",servicos:["Azuleijos":150.00],categoria:"Reformas",atendeDomicilio:true,possuiLojaFisica:false,diasTrabalhados : 15,qtdServicosPrestados : 14,media : 8.75),
                       PrestadorServico(nome:"Michael",servicos:["Azuleijos":150.00],categoria:"Reformas",atendeDomicilio:true,possuiLojaFisica:false,diasTrabalhados : 15,qtdServicosPrestados : 14,media : 8.75),
                       PrestadorServico(nome:"Waltencir",servicos:["Azuleijos":150.00],categoria:"Reformas",atendeDomicilio:true,possuiLojaFisica:false,diasTrabalhados : 15,qtdServicosPrestados : 14,media : 8.75),
                       PrestadorServico(nome:"Luciano",servicos:["Pisos":150.00],categoria:"Reformas",atendeDomicilio:true,possuiLojaFisica:false,diasTrabalhados : 15,qtdServicosPrestados : 14,media : 8.75),
                       PrestadorServico(nome:"Michael",servicos:["Pisos":150.00],categoria:"Reformas",atendeDomicilio:true,possuiLojaFisica:false,diasTrabalhados : 15,qtdServicosPrestados : 14,media : 8.75),
                       PrestadorServico(nome:"Waltencir",servicos:["Pisos":150.00],categoria:"Reformas",atendeDomicilio:true,possuiLojaFisica:false,diasTrabalhados : 15,qtdServicosPrestados : 14,media : 8.75),
                       PrestadorServico(nome:"Davi",servicos:["Eletrônico":120.00],categoria:"Consertos",atendeDomicilio:true,possuiLojaFisica:false,diasTrabalhados : 15,qtdServicosPrestados : 14,media : 8.75),
                       PrestadorServico(nome:"Tadeu",servicos:["Eletrônico":190.00],categoria:"Consertos",atendeDomicilio:true,possuiLojaFisica:true,diasTrabalhados : 15,qtdServicosPrestados : 14,media : 8.75),
                       PrestadorServico(nome:"Rodrigo",servicos:["Eletrônico":140.00],categoria:"Consertos",atendeDomicilio:true,possuiLojaFisica:false,diasTrabalhados : 15,qtdServicosPrestados : 14,media : 8.75),
                       PrestadorServico(nome:"Francisco",servicos:["Eletrodoméstico":150.00],categoria:"Consertos",atendeDomicilio:true,possuiLojaFisica:false,diasTrabalhados : 15,qtdServicosPrestados : 14,media : 8.75),
                       PrestadorServico(nome:"Yago",servicos:["Eletrodoméstico":125.00],categoria:"Consertos",atendeDomicilio:true,possuiLojaFisica:false,diasTrabalhados : 15,qtdServicosPrestados : 14,media : 8.75),
                       PrestadorServico(nome:"Enrique",servicos:["Eletrodoméstico":140.00],categoria:"Consertos",atendeDomicilio:true,possuiLojaFisica:false,diasTrabalhados : 15,qtdServicosPrestados : 14,media : 8.75),
                       PrestadorServico(nome:"Carlos",servicos:["Encanamento":180.00],categoria:"Consertos",atendeDomicilio:true,possuiLojaFisica:false,diasTrabalhados : 15,qtdServicosPrestados : 14,media : 8.75),
                       PrestadorServico(nome:"Luiz",servicos:["Encanamento":150.00],categoria:"Consertos",atendeDomicilio:true,possuiLojaFisica:false,diasTrabalhados : 15,qtdServicosPrestados : 14,media : 8.75),
                       PrestadorServico(nome:"Beto",servicos:["Mecânico":180.00],categoria:"Consertos",atendeDomicilio:true,possuiLojaFisica:true,diasTrabalhados : 15,qtdServicosPrestados : 14,media : 8.75),
                       PrestadorServico(nome:"Lianco",servicos:["Mecânico":180.00],categoria:"Consertos",atendeDomicilio:true,possuiLojaFisica:false,diasTrabalhados : 15,qtdServicosPrestados : 14,media : 8.75),
                       PrestadorServico(nome:"Raphael",servicos:["Limpeza":60.00],categoria:"Autos",atendeDomicilio:true,possuiLojaFisica:false,diasTrabalhados : 15,qtdServicosPrestados : 14,media : 8.75),
                       PrestadorServico(nome:"Gustavo",servicos:["Limpeza":80.00],categoria:"Autos",atendeDomicilio:false,possuiLojaFisica:true,diasTrabalhados : 15,qtdServicosPrestados : 14,media : 8.75),
                       PrestadorServico(nome:"Luiz",servicos:["Limpeza":100.00],categoria:"Autos",atendeDomicilio:true,possuiLojaFisica:true,diasTrabalhados : 15,qtdServicosPrestados : 14,media : 8.75),
                       PrestadorServico(nome:"Leandro",servicos:["Funilaria":250.00],categoria:"Autos",atendeDomicilio:false,possuiLojaFisica:true,diasTrabalhados : 15,qtdServicosPrestados : 14,media : 8.75),
                       PrestadorServico(nome:"Otavio",servicos:["Funilaria":200.00],categoria:"Autos",atendeDomicilio:false,possuiLojaFisica:true,diasTrabalhados : 15,qtdServicosPrestados : 14,media : 8.75),
                       PrestadorServico(nome:"Edvaldo",servicos:["Reparos":100.00],categoria:"Autos",atendeDomicilio:true,possuiLojaFisica:false,diasTrabalhados : 15,qtdServicosPrestados : 14,media : 8.75),
                       PrestadorServico(nome:"Gabriel",servicos:["Reparos":100.00],categoria:"Autos",atendeDomicilio:true,possuiLojaFisica:false,diasTrabalhados : 15,qtdServicosPrestados : 14,media : 8.75),
                       PrestadorServico(nome:"Kaique",servicos:["Reparos":100.00],categoria:"Autos",atendeDomicilio:true,possuiLojaFisica:true,diasTrabalhados : 15,qtdServicosPrestados : 14,media : 8.75),
                       PrestadorServico(nome:"Izabele",servicos:["Decoração":120.00],categoria:"Design",atendeDomicilio:true,possuiLojaFisica:false,diasTrabalhados : 15,qtdServicosPrestados : 14,media : 8.75),
                       PrestadorServico(nome:"Aline",servicos:["Decoração":130.00],categoria:"Design",atendeDomicilio:true,possuiLojaFisica:false,diasTrabalhados : 15,qtdServicosPrestados : 14,media : 8.75),
                       PrestadorServico(nome:"Bruna",servicos:["Decoração":100.00],categoria:"Design",atendeDomicilio:true,possuiLojaFisica:false,diasTrabalhados : 15,qtdServicosPrestados : 14,media : 8.75),
                       PrestadorServico(nome:"Luiza",servicos:["Layout":100.00],categoria:"Design",atendeDomicilio:true,possuiLojaFisica:false,diasTrabalhados : 15,qtdServicosPrestados : 14,media : 8.75),
                       PrestadorServico(nome:"Renata",servicos:["Layout":100.00],categoria:"Design",atendeDomicilio:true,possuiLojaFisica:false,diasTrabalhados : 15,qtdServicosPrestados : 14,media : 8.75),
                       PrestadorServico(nome:"Graziela",servicos:["Layout":100.00],categoria:"Design",atendeDomicilio:true,possuiLojaFisica:false,diasTrabalhados : 15,qtdServicosPrestados : 14,media : 8.75),
                       PrestadorServico(nome:"Thayná",servicos:["Papel de parede":120.00],categoria:"Design",atendeDomicilio:true,possuiLojaFisica:false,diasTrabalhados : 15,qtdServicosPrestados : 14,media : 8.75),
                       PrestadorServico(nome:"Guilherme",servicos:["Computadores":100.00],categoria:"Informática",atendeDomicilio:true,possuiLojaFisica:true,diasTrabalhados : 15,qtdServicosPrestados : 14,media : 8.75),
                       PrestadorServico(nome:"Hamilton",servicos:["Computadores":150.00],categoria:"Informática",atendeDomicilio:true,possuiLojaFisica:false,diasTrabalhados : 15,qtdServicosPrestados : 14,media : 8.75),
                       PrestadorServico(nome:"Alisson",servicos:["Computadores":70.00],categoria:"Informática",atendeDomicilio:true,possuiLojaFisica:false,diasTrabalhados : 15,qtdServicosPrestados : 14,media : 8.75),
                       PrestadorServico(nome:"Alessandro",servicos:["Celulares":70.00],categoria:"Informática",atendeDomicilio:true,possuiLojaFisica:false,diasTrabalhados : 15,qtdServicosPrestados : 14,media : 8.75),
                       PrestadorServico(nome:"Wellignton",servicos:["Celulares":70.00],categoria:"Informática",atendeDomicilio:true,possuiLojaFisica:false,diasTrabalhados : 15,qtdServicosPrestados : 14,media : 8.75),
                       PrestadorServico(nome:"Thomas",servicos:["Celulares":70.00],categoria:"Informática",atendeDomicilio:true,possuiLojaFisica:false,diasTrabalhados : 15,qtdServicosPrestados : 14,media : 8.75),
                       PrestadorServico(nome:"Felipe",servicos:["Impressoras":70.00],categoria:"Informática",atendeDomicilio:true,possuiLojaFisica:false,diasTrabalhados : 15,qtdServicosPrestados : 14,media : 8.75),
                       PrestadorServico(nome:"Daniel",servicos:["Impressoras":70.00],categoria:"Informática",atendeDomicilio:true,possuiLojaFisica:false,diasTrabalhados : 15,qtdServicosPrestados : 14,media : 8.75),
                       PrestadorServico(nome:"Geobalto",servicos:["Impressoras":70.00],categoria:"Informática",atendeDomicilio:true,possuiLojaFisica:false,diasTrabalhados : 15,qtdServicosPrestados : 14,media : 8.75),
                       PrestadorServico(nome:"Péricles",servicos:["Roteadores":70.00],categoria:"Informática",atendeDomicilio:true,possuiLojaFisica:false,diasTrabalhados : 15,qtdServicosPrestados : 14,media : 8.75),
                       PrestadorServico(nome:"Uéliton",servicos:["Roteadores":70.00],categoria:"Informática",atendeDomicilio:true,possuiLojaFisica:false,diasTrabalhados : 15,qtdServicosPrestados : 14,media : 8.75),
                       PrestadorServico(nome:"Clóvis",servicos:["Roteadores":70.00],categoria:"Informática",atendeDomicilio:true,possuiLojaFisica:false,diasTrabalhados : 15,qtdServicosPrestados : 14,media : 8.75),
                       PrestadorServico(nome:"Cleyton",servicos:["Notebooks":70.00],categoria:"Informática",atendeDomicilio:true,possuiLojaFisica:false,diasTrabalhados : 15,qtdServicosPrestados : 14,media : 8.75),
                       PrestadorServico(nome:"Angelo",servicos:["Notebooks":70.00],categoria:"Informática",atendeDomicilio:true,possuiLojaFisica:false,diasTrabalhados : 15,qtdServicosPrestados : 14,media : 8.75),
                       PrestadorServico(nome:"Juliano",servicos:["Notebooks":70.00],categoria:"Informática",atendeDomicilio:true,possuiLojaFisica:false,diasTrabalhados : 15,qtdServicosPrestados : 14,media : 8.75),
                       PrestadorServico(nome:"Pablo",servicos:["Tablets":70.00],categoria:"Informática",atendeDomicilio:true,possuiLojaFisica:false,diasTrabalhados : 15,qtdServicosPrestados : 14,media : 8.75),
                       PrestadorServico(nome:"Wilson",servicos:["Tablets":70.00],categoria:"Informática",atendeDomicilio:true,possuiLojaFisica:false,diasTrabalhados : 15,qtdServicosPrestados : 14,media : 8.75),
                       PrestadorServico(nome:"Fagner",servicos:["Tablets":70.00],categoria:"Informática",atendeDomicilio:true,possuiLojaFisica:false,diasTrabalhados : 15,qtdServicosPrestados : 14,media : 8.75),
                       PrestadorServico(nome:"Rebeca",servicos:["Encomendas":250.00],categoria:"Culinária",atendeDomicilio:true,possuiLojaFisica:false,diasTrabalhados : 15,qtdServicosPrestados : 14,media : 8.75),
                       PrestadorServico(nome:"Rute",servicos:["Encomendas":200.00],categoria:"Culinária",atendeDomicilio:true,possuiLojaFisica:false,diasTrabalhados : 15,qtdServicosPrestados : 14,media : 8.75),
                       PrestadorServico(nome:"Jessica",servicos:["Encomendas":150.00],categoria:"Culinária",atendeDomicilio:true,possuiLojaFisica:false,diasTrabalhados : 15,qtdServicosPrestados : 14,media : 8.75),
                       PrestadorServico(nome:"Vera",servicos:["Buffet":500.00],categoria:"Culinária",atendeDomicilio:true,possuiLojaFisica:false,diasTrabalhados : 15,qtdServicosPrestados : 14,media : 8.75),
                       PrestadorServico(nome:"Vanessa",servicos:["Buffet":350.00],categoria:"Culinária",atendeDomicilio:true,possuiLojaFisica:false,diasTrabalhados : 15,qtdServicosPrestados : 14,media : 8.75),
                       PrestadorServico(nome:"Alissa",servicos:["Buffet":550.00],categoria:"Culinária",atendeDomicilio:true,possuiLojaFisica:false,diasTrabalhados : 15,qtdServicosPrestados : 14,media : 8.75),
                       PrestadorServico(nome:"Sebastiana",servicos:["Cozinheira":150.00],categoria:"Culinária",atendeDomicilio:true,possuiLojaFisica:false,diasTrabalhados : 15,qtdServicosPrestados : 14,media : 8.75),
                       PrestadorServico(nome:"Francisca",servicos:["Cozinheira":150.00],categoria:"Culinária",atendeDomicilio:true,possuiLojaFisica:false,diasTrabalhados : 15,qtdServicosPrestados : 14,media : 8.75),
                       PrestadorServico(nome:"Edneia",servicos:["Cozinheira":150.00],categoria:"Culinária",atendeDomicilio:true,possuiLojaFisica:false,diasTrabalhados : 15,qtdServicosPrestados : 14,media : 8.75),
                       PrestadorServico(nome:"Enéias",servicos:["Churrasqueiro":150.00],categoria:"Culinária",atendeDomicilio:true,possuiLojaFisica:false,diasTrabalhados : 15,qtdServicosPrestados : 14,media : 8.75),
                       PrestadorServico(nome:"Estevão",servicos:["Churrasqueiro":150.00],categoria:"Culinária",atendeDomicilio:true,possuiLojaFisica:false,diasTrabalhados : 15,qtdServicosPrestados : 14,media : 8.75),
                       PrestadorServico(nome:"Diógenes",servicos:["Churrasqueiro":150.00],categoria:"Culinária",atendeDomicilio:true,possuiLojaFisica:false,diasTrabalhados : 15,qtdServicosPrestados : 14,media : 8.75),
                       PrestadorServico(nome:"Carol",servicos:["Manicure":30.00],categoria:"Beleza",atendeDomicilio:true,possuiLojaFisica:false,diasTrabalhados : 15,qtdServicosPrestados : 14,media : 8.75),
                       PrestadorServico(nome:"Kerolyn",servicos:["Manicure":20.00],categoria:"Beleza",atendeDomicilio:true,possuiLojaFisica:true,diasTrabalhados : 15,qtdServicosPrestados : 14,media : 8.75),
                       PrestadorServico(nome:"Barbara",servicos:["Manicure":25.00],categoria:"Beleza",atendeDomicilio:true,possuiLojaFisica:false,diasTrabalhados : 15,qtdServicosPrestados : 14,media : 8.75),
                       PrestadorServico(nome:"Barbara",servicos:["Pedicure":25.00],categoria:"Beleza",atendeDomicilio:true,possuiLojaFisica:false,diasTrabalhados : 15,qtdServicosPrestados : 14,media : 8.75),
                       PrestadorServico(nome:"Kerolyn",servicos:["Pedicure":30.00],categoria:"Beleza",atendeDomicilio:true,possuiLojaFisica:false,diasTrabalhados : 15,qtdServicosPrestados : 14,media : 8.75),
                       PrestadorServico(nome:"Carol",servicos:["Pedicure":35.00],categoria:"Beleza",atendeDomicilio:true,possuiLojaFisica:false,diasTrabalhados : 15,qtdServicosPrestados : 14,media : 8.75),
                       PrestadorServico(nome:"Vinicius",servicos:["Cabelereiro":225.00],categoria:"Beleza",atendeDomicilio:true,possuiLojaFisica:false,diasTrabalhados : 15,qtdServicosPrestados : 14,media : 8.75),
                       PrestadorServico(nome:"Bruno",servicos:["Cabelereiro":105.00],categoria:"Beleza",atendeDomicilio:true,possuiLojaFisica:false,diasTrabalhados : 15,qtdServicosPrestados : 14,media : 8.75),
                       PrestadorServico(nome:"Paula",servicos:["Cabelereiro":125.00],categoria:"Beleza",atendeDomicilio:true,possuiLojaFisica:false,diasTrabalhados : 15,qtdServicosPrestados : 14,media : 8.75),
                       PrestadorServico(nome:"Priscila",servicos:["Maquiadora":50.00],categoria:"Beleza",atendeDomicilio:true,possuiLojaFisica:false,diasTrabalhados : 15,qtdServicosPrestados : 14,media : 8.75),
                       PrestadorServico(nome:"Helena",servicos:["Maquiadora":70.00],categoria:"Beleza",atendeDomicilio:true,possuiLojaFisica:false,diasTrabalhados : 15,qtdServicosPrestados : 14,media : 8.75),
                       PrestadorServico(nome:"Deusdete",servicos:["Maquiadora":80.00],categoria:"Beleza",atendeDomicilio:true,possuiLojaFisica:false,diasTrabalhados : 15,qtdServicosPrestados : 14,media : 8.75),
                       PrestadorServico(nome:"Denis",servicos:["Consulta Médica":150.00],categoria:"Saúde",atendeDomicilio:true,possuiLojaFisica:false,diasTrabalhados : 15,qtdServicosPrestados : 14,media : 8.75),
                       PrestadorServico(nome:"Simone",servicos:["Consulta Médica":100.00],categoria:"Saúde",atendeDomicilio:true,possuiLojaFisica:true,diasTrabalhados : 15,qtdServicosPrestados : 14,media : 8.75),
                       PrestadorServico(nome:"Rubens",servicos:["Consulta Médica":200.00],categoria:"Saúde",atendeDomicilio:true,possuiLojaFisica:true,diasTrabalhados : 15,qtdServicosPrestados : 14,media : 8.75),
                       PrestadorServico(nome:"Solange",servicos:["Nutricionista":130.00],categoria:"Saúde",atendeDomicilio:true,possuiLojaFisica:true,diasTrabalhados : 15,qtdServicosPrestados : 14,media : 8.75),
                       PrestadorServico(nome:"Silvia",servicos:["Nutricionista":70.00],categoria:"Saúde",atendeDomicilio:true,possuiLojaFisica:false,diasTrabalhados : 15,qtdServicosPrestados : 14,media : 8.75),
                       PrestadorServico(nome:"Cleo",servicos:["Nutricionista":150.00],categoria:"Saúde",atendeDomicilio:true,possuiLojaFisica:false,diasTrabalhados : 15,qtdServicosPrestados : 14,media : 8.75),
                       PrestadorServico(nome:"Durvalino",servicos:["Enfermeiro(a)":100.00],categoria:"Saúde",atendeDomicilio:true,possuiLojaFisica:false,diasTrabalhados : 15,qtdServicosPrestados : 14,media : 8.75),
                       PrestadorServico(nome:"Hélio",servicos:["Enfermeiro(a)":200.00],categoria:"Saúde",atendeDomicilio:true,possuiLojaFisica:false,diasTrabalhados : 15,qtdServicosPrestados : 14,media : 8.75),
                       PrestadorServico(nome:"Olga",servicos:["Enfermeiro(a)":150.00],categoria:"Saúde",atendeDomicilio:true,possuiLojaFisica:false,diasTrabalhados : 15,qtdServicosPrestados : 14,media : 8.75),
                       PrestadorServico(nome:"Wendel",servicos:["Dedetizadora":250.00],categoria:"Saúde",atendeDomicilio:true,possuiLojaFisica:true,diasTrabalhados : 15,qtdServicosPrestados : 14,media : 8.75),
                       PrestadorServico(nome:"Leonardo",servicos:["Dedetizadora":200.00],categoria:"Saúde",atendeDomicilio:true,possuiLojaFisica:true,diasTrabalhados : 15,qtdServicosPrestados : 14,media : 8.75),
                       PrestadorServico(nome:"Ulisses",servicos:["Dedetizadora":120.00],categoria:"Saúde",atendeDomicilio:true,possuiLojaFisica:false,diasTrabalhados : 15,qtdServicosPrestados : 14,media : 8.75),
                       PrestadorServico(nome:"Henrique",servicos:["Cuidador(a) de Idosos":200.00],categoria:"Saúde",atendeDomicilio:true,possuiLojaFisica:false,diasTrabalhados : 15,qtdServicosPrestados : 14,media : 8.75),
                       PrestadorServico(nome:"Teófilo",servicos:["Cuidador(a) de Idosos":180.00],categoria:"Saúde",atendeDomicilio:true,possuiLojaFisica:false,diasTrabalhados : 15,qtdServicosPrestados : 14,media : 8.75),
                       PrestadorServico(nome:"Juliana",servicos:["Cuidador(a) de Idosos":250.00],categoria:"Saúde",atendeDomicilio:true,possuiLojaFisica:false,diasTrabalhados : 15,qtdServicosPrestados : 14,media : 8.75),
                       PrestadorServico(nome:"Jose",servicos:["Depósito":00.00],categoria:"Compra de Materiais",atendeDomicilio:true,possuiLojaFisica:true,diasTrabalhados : 15,qtdServicosPrestados : 14,media : 8.75),
                       PrestadorServico(nome:"Raimunda",servicos:["Depósito":00.00],categoria:"Compra de Materiais",atendeDomicilio:false,possuiLojaFisica:true,diasTrabalhados : 15,qtdServicosPrestados : 14,media : 8.75),
                       PrestadorServico(nome:"Fernando",servicos:["Depósito":00.00],categoria:"Compra de Materiais",atendeDomicilio:false,possuiLojaFisica:true,diasTrabalhados : 15,qtdServicosPrestados : 14,media : 8.75)]
    func getPrestadoresServicos() -> [PrestadorServico]{
        return self.prestadores
    }
    
    func getPrestadorPorCategoria(categoriaFiltro:String,servico:String,
                                  atendimentoDomiciliar:Bool,
                                  buscarSePossuiLojaFisica:Bool)->[PrestadorServico]{
        var prestadoresFiltrados = [PrestadorServico]()
        for i in prestadores {
            if let categoria = i.categoria ,
               let atendeDomicilio = i.atendeDomicilio,
               let possuiLojaFisica = i.possuiLojaFisica{
                if categoriaFiltro == categoria {
                    if i.servicos.index(forKey: servico) != nil{
                    if atendimentoDomiciliar == atendeDomicilio || possuiLojaFisica == possuiLojaFisica{
                         prestadoresFiltrados.append(i)
                    }
                    }
                }
            }
        }
        return prestadoresFiltrados
    }
}
